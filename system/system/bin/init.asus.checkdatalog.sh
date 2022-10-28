#!/system/vendor/bin/sh

# Parameter Definition
# $1: Caller


restorecon -FR /asdf
mkdir /data/logcat_log
restorecon /data/everbootup
restorecon /data/logcat_log
is_datalog_exist=`ls /data | grep logcat_log`
startlog_flag=`getprop persist.vendor.asus.startlog`
version_type=`getprop ro.build.type`
check_factory_version=`grep -c androidboot.pre-ftm=1 /proc/cmdline`
is_sb=`grep -c SB=Y /proc/cmdline`
logcat_filenum=`getprop persist.vendor.asus.logcat.filenum`
is_clear_logcat_logs=`getprop sys.asus.logcat.clear`
MAX_ROTATION_NUM=30
Caller=`getprop sys.asus.check-data.caller`

# for secdisplay++
touch /mnt/vendor/persist/secdisplayLog
chmod 777 /mnt/vendor/persist/secdisplayLog
# for secdisplay++
#echo $is_clear_logcat_logs > /proc/asusevtlog
#echo $logcat_filenum > /proc/asusevtlog

if test "$Caller" != ""; then
	setprop sys.asus.check-data.caller ""
fi


#for logcat in /data/logcat_log/logcat*
#do
#	size=`stat -c%s $logcat`
#	if [ $size -gt 20971520 ]; then
#$		truncate -s 10485760 $logcat
#$	fi
#done

for asusevtlog in /asdf/ASUSEvtlog*
do
	size=`stat -c%s $asusevtlog`
	if [ $size -gt 20971520  ]; then
		truncate -s 10485760 $asusevtlog
	fi
done



######################################################################################
# For AsusLogTool logcat log rotation number setting
######################################################################################
if [ "$is_clear_logcat_logs" == "1" ]; then
	if [ "$logcat_filenum" != "3" ] && [ "$logcat_filenum" != "10" ] && [ "$logcat_filenum" != "20" ] && [ "$logcat_filenum" != "30" ]; then
		#if logcat_filenum get failed, sleep 1s and retry
		sleep 1
		logcat_filenum=`getprop persist.asus.logcat.filenum`

		if [ "$logcat_filenum" == "" ]; then
			logcat_filenum=20
		fi
	fi

	file_counter=$MAX_ROTATION_NUM
	while [ $file_counter -gt $logcat_filenum ]; do
		if [ $file_counter -lt 10 ]; then
			two_digit_file_counter=0$file_counter;
			
			if [ -e /data/logcat_log/logcat.txt.$two_digit_file_counter ]; then
				rm -f /data/logcat_log/logcat.txt.$two_digit_file_counter
			fi
		fi

		if [ -e /data/logcat_log/logcat.txt.$file_counter ]; then
			rm -f /data/logcat_log/logcat.txt.$file_counter
		fi
		
		file_counter=$(($file_counter-1))
	done

	setprop sys.asus.logcat.clear "0"
fi

######################################################################################
# For original logcat service startlog
######################################################################################
if test -e /data/bootup; then
	echo 1 > /data/bootup
	restorecon /data/bootup
#	echo $is_datalog_exist > /data/bootup
	startlog_flag=`getprop persist.vendor.asus.startlog`

		if test "$Caller" = "OOB"; then
			start logcat-oob
			start logcat-radio-oob
			start logcat-event-oob
		else
			if test "$startlog_flag" -eq 1;then
				start logcat
				start logcat-radio
				start logcat-events
				start logcat-net
			else
				stop logcat
				stop logcat-radio
				stop logcat-events
				stop logcat-net
			fi
		fi
#	fi        	
else
	setprop persist.asus.ramdump 1
	setprop persist.asus.autosavelogmtp 0
	if  test "$version_type" = "eng"; then
		setprop persist.vendor.asus.startlog 1
		setprop persist.asus.kernelmessage 7
	elif test "$version_type" = "userdebug"; then
			if test "$check_factory_version" = "1"; then
				if test "$is_sb" = "1"; then
					setprop persist.vendor.asus.kernelmessage 0
				else
					setprop persist.vendor.asus.kernelmessage 7
				fi
				setprop persist.vendor.asus.enable_navbar 1
			else
				setprop persist.vendor.asus.kernelmessage 0	
			fi
		setprop persist.vendor.asus.startlog 1
		setprop persist.vendor.sys.downloadmode.enable 1
		
	fi
	
	recheck_datalog=`ls /data | grep logcat_log`

	if test "$recheck_datalog"; then
		chown system.system /data/logcat_log
		chmod 0775 /data/logcat_log
		if test "$Caller" = "OOB"; then
			start logcat-oob
			start logcat-radio-oob
			start logcat-event-oob
		else
			if test "$version_type" = "user";then
				if test "$startlog_flag" -eq 1;then
					start logcat
					start logcat-radio
					start logcat-events
					start qcom_dcc_debug
					start logcat-net
				else
					stop logcat
					stop logcat-radio
					stop logcat-events
					stop  logcat-net
				fi
			
			else
				start logcat
				start logcat-radio
				start logcat-events
				start qcom_dcc_debug
				start logcat-net
			fi
		fi
	fi
	echo "[Debug] The file bootup doesn't exist, data partition might be erased(factory reset)" > /proc/asusevtlog
	echo 0 > /data/bootup
fi


# bootcount
if test -e "/data/bootcount"; then
	var=$( cat /data/bootcount )
	var=$(($var+1))
	echo ${var}>/data/bootcount
else
	echo 1 >/data/bootcount
fi

zram_enable=`getprop persist.vendor.zram.enable`

if test ".$zram_enable" = "."; then
       MemTotalStr=`cat /proc/meminfo | grep MemTotal`
       MemTotal=${MemTotalStr:16:8}
       let RamSizeGB="( $MemTotal / 1048576 ) + 1"
       if [ $RamSizeGB -le 12 ]; then
               setprop  persist.vendor.zram.enable 1
       else
               setprop  persist.vendor.zram.enable 0
       fi
fi




