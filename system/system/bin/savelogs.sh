#!/system/bin/sh

ROOT_PATH=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/

#MODEM_LOG
MODEM_LOG=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/modem

#TCP_DUMP_LOG
TCP_DUMP_LOG=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/TCPdump

#GENERAL_LOG
GENERAL_LOG=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/general/sdcard

#Dumpsys folder
DUMPSYS_DIR=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/dumpsys

#MTK folder
MTK_DIR=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger

#BUGREPORT Source
BUGREPORT_PATH=/data/user_de/0/com.android.shell/files/bugreports

#BUSYBOX=busybox
#BUGREPORT_PATH=/data/user_de/0/com.android.shell/files/bugreports
#GENERAL_LOG=/data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/general/sdcard
#GENERAL_LOG=/data/media/0/ASUS/LogUploader/general/sdcard
PATH=/system/bin/:$PATH

PLATFORM=MTK

savelogs_prop=`getprop persist.vendor.asus.savelogs`
is_tcpdump_status=`getprop init.svc.tcpdump-warp`
isBetaUser=`getprop persist.vendor.asus.mupload.enable`

export_general_log() {
	mkdir -p $GENERAL_LOG
	echo "mkdir -p $GENERAL_LOG"

	############################################################################################
        bugreportz > $GENERAL_LOG/bugreportz_log.txt
        for filename in $BUGREPORT_PATH/*; do
            name=${filename##*/}
           cp $filename  $GENERAL_LOG/$name
            rm $filename
        done
	############################################################################################
	# save cmdline
	cat /proc/cmdline > $GENERAL_LOG/cmdline.txt
	echo "cat /proc/cmdline > $GENERAL_LOG/cmdline.txt"	
	############################################################################################
	cat /sys/kernel/dload/dload_mode > $GENERAL_LOG/dload_mode.txt
	cat /sys/module/msm_poweroff/parameters/download_mode > $GENERAL_LOG/download_mode.txt
	############################################################################################
	cat /d/wakeup_sources  > $GENERAL_LOG/wakeup_sources.txt
	############################################################################################
	# save mount table
	cat /proc/mounts > $GENERAL_LOG/mounts.txt
	echo "cat /proc/mounts > $GENERAL_LOG/mounts.txt"
	############################################################################################
	getenforce > $GENERAL_LOG/getenforce.txt
	echo "getenforce > $GENERAL_LOG/getenforce.txt"
	############################################################################################
	# save property
	getprop > $GENERAL_LOG/getprop.txt
	echo "getprop > $GENERAL_LOG/getprop.txt"
	############################################################################################
	# save network info
	cat /proc/net/route > $GENERAL_LOG/route.txt
	echo "cat /proc/net/route > $GENERAL_LOG/route.txt"
	netcfg > $GENERAL_LOG/ifconfig.txt
	echo "ifconfig -a > $GENERAL_LOG/ifconfig.txt"
	netstat -anlp > $GENERAL_LOG/netstat.txt
	echo "netstat -anlp > $GENERAL_LOG/netstat.txt"
	date && ip rule > $GENERAL_LOG/iprule.txt
	echo "date && ip rule > $GENERAL_LOG/iprule.txt"
	############################################################################################
	# save software version
	echo "AP_VER: `getprop ro.build.display.id`" > $GENERAL_LOG/version.txt
	echo "CP_VER: `getprop gsm.version.baseband`" >> $GENERAL_LOG/version.txt
	echo "BT_VER: `getprop vendor.bt.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop vendor.wifi.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop wigig.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop wigig.dock.version.driver`" >> $GENERAL_LOG/version.txt
	echo "GPS_VER: `getprop vendor.gps.version.driver`" >> $GENERAL_LOG/version.txt
	echo "BUILD_DATE: `getprop ro.build.date`" >> $GENERAL_LOG/version.txt
	############################################################################################
	# save load kernel modules
	lsmod > $GENERAL_LOG/lsmod.txt
	echo "lsmod > $GENERAL_LOG/lsmod.txt"
	############################################################################################
	# save process now
	ps > $GENERAL_LOG/ps.txt
	echo "ps > $GENERAL_LOG/ps.txt"
	ps -eo f,s,uid,pid,ppid,c,pri,ni,bit,sz,%mem,%cpu,wchan,tty,time,cmd > $GENERAL_LOG/ps_all.txt
	echo "ps > $GENERAL_LOG/ps_all.txt"
	ps -A -T > $GENERAL_LOG/ps_thread.txt
	echo "ps > $GENERAL_LOG/ps_thread.txt"
	############################################################################################
	# save kernel message
	dmesg > $GENERAL_LOG/dmesg.txt
	echo "dmesg > $GENERAL_LOG/dmesg.txt"
	############################################################################################
	# copy data/log to data/media
	#$BUSYBOX ls -R -l /data/log/ > $GENERAL_LOG/ls_data_log.txt
	#mkdir $GENERAL_LOG/log
	#$BUSYBOX cp /data/log/* $GENERAL_LOG/log/
	#echo "$BUSYBOX cp /data/log $GENERAL_LOG"
	############################################################################################
	# copy data/tombstones to data/media
	ls -R -l /data/tombstones/ > $GENERAL_LOG/ls_data_tombstones.txt
	mkdir $GENERAL_LOG/tombstones
	cp /data/tombstones/* $GENERAL_LOG/tombstones/
	echo "cp /data/tombstones $GENERAL_LOG"	
	############################################################################################
	mkdir $GENERAL_LOG/gpu
	cp -r /data/vendor/gpu/* $GENERAL_LOG/gpu
	rm -r /data/vendor/gpu/*
	ls -R -l /data/vendor/gpu > $GENERAL_LOG/ls_vendor_gpu.txt
	############################################################################################
	ls -R -l /asdf > $GENERAL_LOG/ls_asdf.txt
	############################################################################################

#      chmod 777 /vendor/logfs
	chmod 777 /vendor/logfs
#      log "wei +++++"
#      mount -t vfat /dev/block/bootdevice/by-name/logfs /vendor/logfs
	mount -t vfat /dev/block/bootdevice/by-name/logfs /vendor/logfs
	cp -r /vendor/logfs $GENERAL_LOG

	# copy Debug Ion information to data/media
	mkdir $GENERAL_LOG/ION_Debug
	cp -r /d/ion/* $GENERAL_LOG/ION_Debug/
	############################################################################################
	cp -r /sdcard/mocmna $GENERAL_LOG/ION_Debug/
	############################################################################################
	# copy data/logcat_log to data/media
	ls -R -l /data/logcat_log/ > $GENERAL_LOG/ls_data_logcat_log.txt
	stop logcat
	stop logcat-events
	stop logcat-radio
	mkdir $GENERAL_LOG/logcat_log
	if [ -d "/data/logcat_log" ]; then
		for x in logcat logcat-radio logcat-events
		do
			cp /data/logcat_log/$x.txt /data/logcat_log/$x.txt.0
			cp /data/logcat_log/$x.txt.* $GENERAL_LOG/logcat_log
		done
	fi
	rm /data/logcat_log/*
	start logcat
	start logcat-events
	start logcat-radio
	#echo "$BUSYBOX cp -r /data/logcat_log $GENERAL_LOG"
	#mkdir $GENERAL_LOG/logcat_log
	# logcat & radio
	#	for x in logcat logcat-radio logcat-events
	#	do
	#@		cp /data/logcat_log/$x.txt /data/logcat_log/$x.txt.0
	#		mv /data/logcat_log/$x.txt.* $GENERAL_LOG/logcat_log
	#	done
	############################################################################################
	# copy /asdf/ASUSEvtlog.txt to ASDF
	cp -r /sdcard/asus_log/ASUSEvtlog.txt $GENERAL_LOG #backward compatible
	cp -r /sdcard/asus_log/ASUSEvtlog_old.txt $GENERAL_LOG #backward compatible
	cp -r /asdf/ASUSEvtlog.txt $GENERAL_LOG
	cp -r /asdf/ASUSEvtlog_old.txt $GENERAL_LOG
	cp -r /asdf/ASDF $GENERAL_LOG
	cp -r /asdf/dumpsys_meminfo $GENERAL_LOG && rm -r /asdf/dumpsys_meminfo
	# copy dumpsys sensnorservice log for power issue
	cp -r /asdf/sensor/dumpsys_sensorservice.txt $GENERAL_LOG && rm -r /asdf/sensor/dumpsys_sensorservice.txt
	cp -r /asdf/ $GENERAL_LOG/asdf2
	echo "cp -r /asdf/ASUSEvtlog.txt $GENERAL_LOG"

	for fname in /asdf/ASUSSlowg*
	do
		if [ -e $fname ]; then
			echo "$fname found!" >/dev/kmsg 
			rm $fname
		fi
	done

	############################################################################################
	# save charger information
	mkdir $GENERAL_LOG/charger_debug/
	cat /sys/devices/platform/11d04000.i2c/i2c-7/7-0053/rt9490-chg.1.auto/dump_all_registers > $GENERAL_LOG/charger_debug/rt9490_reg.txt
	cat /sys/devices/platform/11d04000.i2c/i2c-7/7-0065/dump_all_registers > $GENERAL_LOG/charger_debug/nu2205_reg.txt
	cat /sys/class/power_supply/*/uevent > $GENERAL_LOG/charger_debug/psy_event.txt
	############################################################################################
	cat /proc/interrupts > $GENERAL_LOG/interrupts.txt
	# save sleep information
	cat /sys/power/rpmh_stats/master_stats > $GENERAL_LOG/charger_debug/master_stats.txt
	cat /sys/power/system_sleep/stats > $GENERAL_LOG/charger_debug/system_sleep.txt
	##############################################################################################
       	AudioServerPid=`ps -ef | grep "audioserver " | sed '1d' | awk '{print $2}'`
       	pmap $AudioServerPid > $GENERAL_LOG/AudioServerMap.txt

	############################################################################################
	# backup wlan_logs
	WLAN_LOGS_BACKUP_PATH="/data/media/0/asus_log/wlan_logs_`date +%Y_%m_%d_%H_%M_%S`"
	mkdir -p $WLAN_LOGS_BACKUP_PATH
	echo "mkdir -p $WLAN_LOGS_BACKUP_PATH"
	chmod -R 777 $WLAN_LOGS_BACKUP_PATH
	cp -r /data/vendor/wifi/wlan_logs/* $WLAN_LOGS_BACKUP_PATH
	echo "cp -r /data/vendor/wifi/wlan_logs/* $WLAN_LOGS_BACKUP_PATH"
	sync
	echo "tar -czf $WLAN_LOGS_BACKUP_PATH.tar.gz . -C $WLAN_LOGS_BACKUP_PATH"
	wait_cmd=`tar -czf $WLAN_LOGS_BACKUP_PATH.tar.gz . -C $WLAN_LOGS_BACKUP_PATH`
	sync
	echo "rm -rf $WLAN_LOGS_BACKUP_PATH"
	rm -rf $WLAN_LOGS_BACKUP_PATH
	sync
	############################################################################################
	# capture cnss ipc logs
	cat /sys/kernel/debug/ipc_logging/pcie0-long/log > $GENERAL_LOG/pcie0-long_host.txt
	cat /sys/kernel/debug/ipc_logging/pcie0-short/log > $GENERAL_LOG/pcie0-short_host.txt
	cat /sys/kernel/debug/ipc_logging/pcie0-dump/log > $GENERAL_LOG/pcie0-dump_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss/log > $GENERAL_LOG/cnss_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-mhi/log > $GENERAL_LOG/cnss_mhi_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-mhi-cntrl/log > $GENERAL_LOG/cnss_mhi_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-long/log > $GENERAL_LOG/cnss_long_host.txt
	# capture cnss ipc logs
	############################################################################################
	if [ ".$isBetaUser" == ".1" ]; then
		cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStore.xml $GENERAL_LOG
		echo "cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStore.xml $GENERAL_LOG"
		cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml $GENERAL_LOG
		echo "cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml $GENERAL_LOG"
		cp -r /data/misc/wifi/WifiViceConfigStore.xml $GENERAL_LOG
		echo "cp -r /data/misc/wifi/WifiViceConfigStore.xml $GENERAL_LOG"

		ls -R -l /data/vendor/wifi > $GENERAL_LOG/ls_wifi_asus_log.txt

		cp -r /data/vendor/wifi/wpa/wpa_supplicant.conf $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wpa/wpa_supplicant.conf $GENERAL_LOG"

		cp -r /data/vendor/wifi/wpa/p2p_supplicant.conf $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wpa/p2p_supplicant.conf $GENERAL_LOG"

		if [ -f "/data/vendor/wifi/hostapd/hostapd_wlan1.conf" ]; then
			cp -r /data/vendor/wifi/hostapd/hostapd_wlan1.conf $GENERAL_LOG
			echo "cp -r /data/vendor/wifi/hostapd/hostapd_wlan1.conf $GENERAL_LOG"
		fi

		if [ -f "/data/vendor/wifi/hostapd/hostapd_wlan2.conf" ]; then
			cp -r /data/vendor/wifi/hostapd/hostapd_wlan2.conf $GENERAL_LOG
			echo "cp -r /data/vendor/wifi/hostapd/hostapd_wlan2.conf $GENERAL_LOG"
		fi

		# copy /sdcard/wlan_logs/*_current.txt
		cp -r /data/vendor/wifi/wlan_logs/cnss_fw_logs_current.txt $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wlan_logs/cnss_fw_logs_current.txt $GENERAL_LOG"
		cp -r /data/vendor/wifi/wlan_logs/host_driver_logs_current.txt $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wlan_logs/host_driver_logs_current.txt $GENERAL_LOG"

		# copy wlan ramdump
		mkdir $GENERAL_LOG/ssr_ramdump
		cp -r /data/vendor/ramdump/ssr_ramdump/wlan* $GENERAL_LOG/ssr_ramdump/
		rm -r /data/vendor/ramdump/ssr_ramdump/wlan*
		echo "cp -r /data/vendor/ramdump/ssr_ramdump/wlan* $GENERAL_LOG/ssr_ramdump"
	else
		echo "cp -r $WLAN_LOGS_BACKUP_PATH.tar.gz $GENERAL_LOG"
		cp -r $WLAN_LOGS_BACKUP_PATH.tar.gz $GENERAL_LOG
		sync
		echo "rm -rf /data/vendor/wifi/wlan_logs/*"
		rm -rf /data/vendor/wifi/wlan_logs/*
		echo "rm -rf $WLAN_LOGS_BACKUP_PATH.tar.gz"
		rm -rf $WLAN_LOGS_BACKUP_PATH.tar.gz
		sync
	fi
	############################################################################################
	cp -r /data/misc/update_engine_log $GENERAL_LOG
	############################################################################################
	dmabuf_dump > $GENERAL_LOG/dmabuf_dump.txt
	# mv /data/anr to data/media
	ls -R -l /data/anr > $GENERAL_LOG/ls_data_anr.txt
	mkdir $GENERAL_LOG/anr
	cp /data/anr/* $GENERAL_LOG/anr/
	echo "cp /data/anr $GENERAL_LOG"
	############################################################################################
	# save system information
	mkdir $DUMPSYS_DIR
	
    ############################################################################################
#    timeout 5 cat /d/tzdbg/log > $GENERAL_LOG/tz_log.txt
#    timeout 5 cat /d/tzdbg/qsee_log > $GENERAL_LOG/qsee_log.txt
    timeout 5 cat /proc/tzdbg/log > $GENERAL_LOG/tz_log.txt
    timeout 5 cat /proc/tzdbg/qsee_log > $GENERAL_LOG/qsee_log.txt
    ############################################################################################
    timeout 5 top  > $GENERAL_LOG/top.txt
    ############################################################################################
    # [BugReporter]Save ps.txt to Dumpsys folder
    ps -A  > $DUMPSYS_DIR/ps.txt
    ############################################################################################
    date > $GENERAL_LOG/date.txt
	echo "date > $GENERAL_LOG/date.txt"
	############################################################################################	
	# save debug report
    #dumpstate -q > $GENERAL_LOG/dumpstate.txt
    #echo "dumpstate > $DUMPSYS_DIR/dumpstate.txt"
#	dumpstate -q -d -z -o $BUGREPORT_PATH/bugreport
#	for filename in $BUGREPORT_PATH/*; do
#	    name=${filename##*/}
#	    cp $filename  $GENERAL_LOG/$name
#	    rm $filename
#	done
	############################################################################################

        mkdir $GENERAL_LOG/tencent
        chmod 777 $GENERAL_LOG/tencent


        for pid in `ps -ef | grep "tencent"| awk '{print $2}'` ; do
                name=`cat /proc/$pid/comm`
                pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
                cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
                cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
        done

        for pid in `ps -ef | grep "audioserver"| awk '{print $2}'` ; do
                name=`cat /proc/$pid/comm`
                pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
                cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
                cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
        done

        for pid in `ps -ef | grep "system_server"| awk '{print $2}'` ; do
                name=`cat /proc/$pid/comm`
                pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
                cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
                cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
        done


	############################################################################################
    micropTest=`cat /sys/class/switch/pfs_pad_ec/state`
	if [ "${micropTest}" = "1" ]; then
	    date > $GENERAL_LOG/microp_dump.txt
	    cat /d/gpio >> $GENERAL_LOG/microp_dump.txt                   
        echo "cat /d/gpio > $GENERAL_LOG/microp_dump.txt"  
        cat /d/microp >> $GENERAL_LOG/microp_dump.txt
        echo "cat /d/microp > $GENERAL_LOG/microp_dump.txt"
	fi
	############################################################################################
	df > $GENERAL_LOG/df.txt
	echo "df > $GENERAL_LOG/df.txt"
	###########################################################################################
	lsof > $GENERAL_LOG/lsof.txt
	mkdir  $GENERAL_LOG/ap_ramdump
	cp -r  /data/media/ap_ramdump/* $GENERAL_LOG/ap_ramdump/
	mkdir  $GENERAL_LOG/recovery
	cp -r  /cache/recovery/* $GENERAL_LOG/recovery
	vmstat 1 5 > $GENERAL_LOG/vmstat.txt
        mkdir $GENERAL_LOG/Power_Err_log
        cp /asdf/ASUS_*.txt $GENERAL_LOG/Power_Err_log

	#############################################################################################
	dd if=/dev/block/bootdevice/by-name/ftm of=/data/vendor/ramdump/miniramdump_header.txt bs=4 count=2

	var=$(cat /data/vendor/ramdump/miniramdump_header.txt)
	if test "$var" = "MiniDump"
	then
       		#echo Found Raw Ram Dump!
        	#echo Start to dump...
        	echo "Raw_Dmp!" > /data/vendor/ramdump/miniramdump_header.txt
        	dd if=/data/vendor/ramdump/miniramdump_header.txt of=/dev/block/bootdevice/by-name/ftm bs=4 count=2
        	dd if=/dev/block/bootdevice/by-name/ftm of=/data/vendor/ramdump/MiniRawRamDump.bin

        	tar -czvf $GENERAL_LOG/MiniRawRamDump.tgz /data/vendor/ramdump/MiniRawRamDump.bin

        	rm /data/vendor/ramdump/MiniRawRamDump.bin
        	rm /data/vendor/ramdump/miniramdump_header.txt
        	dd if=/dev/zero of=/dev/block/bootdevice/by-name/ftm bs=4 count=2

        #am broadcast -a android.intent.action.MEDIA_MOUNTED --ez read-only false -d file:///storage/emulated/0/ -p com.android.providers.media
        #echo Finish!
#else
        #echo Not Found Raw Ram Dump.
	fi
	#############################################################################################
	cp -r /data/aee_exp  $GENERAL_LOG

	dd if=/dev/block/bootdevice/by-name/rawdump  of=/data/vendor/ramdump/ramdump_header.txt bs=4 count=2

	var=$(cat /data/vendor/ramdump/ramdump_header.txt)
	if test "$var" = "Raw_Dmp!"
	then
        #echo Found Raw Ram Dump!
        #echo Start to dump...
		dd if=/dev/block/bootdevice/by-name/rawdump of=/data/vendor/ramdump/RawRamDump.bin

        	tar -czvf $GENERAL_LOG/RawRamDump.tgz /data/vendor/ramdump/RawRamDump.bin

        	rm /data/vendor/ramdump/RawRamDump.bin
        	rm /data/vendor/ramdump/ramdump_header.txt
        	dd if=/dev/zero of=/dev/block/bootdevice/by-name/rawdump bs=4 count=2

        #am broadcast -a android.intent.action.MEDIA_MOUNTED --ez read-only false -d file:///storage/emulated/0/ -p com.android.providers.media
        #echo Finish!
#else
        #echo Not Found Raw Ram Dump.
	fi


        #mv /data/media/0/ssr_ramdump/ $SAVE_LOG_PATH
        cp -r  /data/media/0/ssr_ramdump/ $GENERAL_LOG
	procrank > $GENERAL_LOG/procrank.txt
	 dd if=/dev/block/by-name/expdb  of=$GENERAL_LOG/lk.txt bs=1 count=2093040 skip=0x07E00000

	rm /data/debuglogger/*

        #rm -r  /data/media/0/ssr_ramdump/
        echo "mv /data/media/0/ssr_ramdump $GENERAL_LOG"



 


	############################################################################################
#	dumpstate -q -d -z -o $GENERAL_LOG/bugreport

chmod -R 777 $GENERAL_LOG

#am broadcast -a com.asus.savelogs.completed -n com.asus.loguploader/.logtool.LogtoolReceiver
#setprop persist.vendor.asus.savelogs.complete 0
#setprop persist.vendor.asus.savelogs.complete 1

}


export_ramdump_log(){
	if [ -e $ROOT_PATH/ramdump ]; then
		rm -r $ROOT_PATH/ramdump
	fi
	mkdir -p $ROOT_PATH/ramdump
	cp -r /data/vendor/ramdump/diag_logs/QXDM_logs $ROOT_PATH/ramdump
	chmod -R 777 $ROOT_PATH/ramdump
	echo "/data/vendor/ramdump/diag_logs/QXDM_logs $ROOT_PATH/ramdump"
}

export_tombstones_log() {
	if [ -e $ROOT_PATH/tombstones ]; then
		rm -r $ROOT_PATH/tombstones
	fi
	mkdir -p $ROOT_PATH/tombstones
	cp -r  /data/vendor/ramdump/ssr_ramdump/modem0 $ROOT_PATH/tombstones
	chmod -R 777 $ROOT_PATH/tombstones
	echo "/data/vendor/ramdump/ssr_ramdump/modem0 $ROOT_PATH/tombstones"
}

export_tcpdump_log() {
	if [ -e $ROOT_PATH/tcpdump ]; then
		rm -r $ROOT_PATH/tcpdump
	fi
	mkdir -p $ROOT_PATH/tcpdump
	cp -r /data/media/0/asus_log/tcpdump/ $ROOT_PATH/tcpdump
	chmod -R 777 $ROOT_PATH/tcpdump
	echo "/data/media/0/asus_log/tcpdump/ $ROOT_PATH/modem"
}

export_bluetooth_log(){
	if [ -e $ROOT_PATH/bluetooth ]; then
		rm -r $ROOT_PATH/bluetooth
	fi
	mkdir -p $ROOT_PATH/bluetooth
	#cp -r /data/misc/bluetooth/logs/ $ROOT_PATH/bluetooth
	cp -r /data/debuglogger/connsyslog/fw $ROOT_PATH/bluetooth
	cp -r /data/debuglogger/connsyslog/bthci $ROOT_PATH/bluetooth
	chmod -R 777 $ROOT_PATH/bluetooth
	echo "mv /data/misc/bluetooth/logs/ $ROOT_PATH/bluetooth"
}

export_bluetooth_ramdump_log(){
	if [ -e $ROOT_PATH/bluetooth_ramdump ]; then
		rm -r $ROOT_PATH/bluetooth_ramdump
	fi
	mkdir -p $ROOT_PATH/bluetooth_ramdump
	cp -r /data/vendor/ssrdump/ $ROOT_PATH/bluetooth_ramdump
	chmod -R 777 $ROOT_PATH/bluetooth_ramdump
	echo "mv /data/vendor/ssrdump/ $ROOT_PATH/bluetooth_ramdump"
}

export_mtk_mobile_log() {
    if [ -e $MTK_DIR/mobilelog ]; then
		rm -r $MTK_DIR/mobilelog
	fi
	mkdir -p $MTK_DIR/mobilelog 
	cp -r /data/debuglogger/mobilelog/ $MTK_DIR/mobilelog 
	chmod -R 777 $MTK_DIR/mobilelog
	echo "mv /data/debuglogger/mobilelog/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/mobilelog"
}

export_mtk_modem_log() {
    if [ -e $MTK_DIR/MDLog1 ]; then
		rm -r $MTK_DIR/MDLog1
	fi
	mkdir -p $MTK_DIR/MDLog1 
	cp -r /data/debuglogger/mdlog1/ $MTK_DIR/MDLog1
	chmod -R 777 $MTK_DIR/MDLog1
	echo "mv /data/debuglogger/MDLog1/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/MDLog1"
}

export_mtk_network_log() {
    if [ -e $MTK_DIR/netlog ]; then
		rm -r $MTK_DIR/netlog
	fi
	mkdir -p $MTK_DIR/netlog 
	cp -r /data/debuglogger/netlog/ $MTK_DIR/netlog 
	chmod -R 777 $MTK_DIR/netlog
	echo "mv /data/debuglogger/netlog/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/netlog"
}

export_mtk_connsyslog_fw_log() {
    if [ -e $MTK_DIR/connsyslog/fw ]; then
		rm -r $MTK_DIR/connsyslog/fw
	fi
	mkdir -p $MTK_DIR/connsyslog/fw 
	cp -r /data/debuglogger/connsyslog/fw/ $MTK_DIR/connsyslog/fw 
	chmod -R 777 $MTK_DIR/connsyslog/fw
	echo "mv /data/debuglogger/connsyslog/fw/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/connsyslog/fw"
}

export_mtk_connsyslog_hci_log() {
    if [ -e $MTK_DIR/connsyslog/bthci ]; then
		rm -r $MTK_DIR/connsyslog/bthci
	fi
	mkdir -p $MTK_DIR/connsyslog/bthci
	cp -r /data/debuglogger/connsyslog/bthci/ $MTK_DIR/connsyslog/bthci
	chmod -R 777 $MTK_DIR/connsyslog/bthci
	echo "mv /data/debuglogger/connsyslog/bthci/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/connsyslog/bthci"
}

export_mtk_gpshost_log() {
    if [ -e $MTK_DIR/connsyslog/gpshost ]; then
		rm -r $MTK_DIR/connsyslog/gpshost
	fi
	mkdir -p $MTK_DIR/connsyslog/gpshost 
	cp -r /data/debuglogger/connsyslog/gpshost/ $MTK_DIR/connsyslog/gpshost
	chmod -R 777 $MTK_DIR/connsyslog/gpshost
	echo "mv /data/debuglogger/connsyslog/gpshost/ /data/media/0/Android/data/com.asus.loguploader/files/ASUS/LogUploader/debuglogger/connsyslog/gpshost"
}

send_movelog_complete(){
	am broadcast -a com.asus.savelogs.completed -n com.asus.loguploader/.logtool.LogtoolReceiver --ei logtype $savelogs_prop
	echo "send_movelog_complete Done"
}

save_general_log() {
	############################################################################################
	setprop sys.audio.amp.reg_dump 1
	sleep 8
	############################################################################################
	# save cmdline
	cat /proc/cmdline > $GENERAL_LOG/cmdline.txt
	echo "cat /proc/cmdline > $GENERAL_LOG/cmdline.txt"	
	############################################################################################
	cat /sys/kernel/dload/dload_mode > $GENERAL_LOG/dload_mode.txt
	cat /sys/module/msm_poweroff/parameters/download_mode > $GENERAL_LOG/download_mode.txt
	############################################################################################
	cat /d/wakeup_sources  > $GENERAL_LOG/wakeup_sources.txt
	############################################################################################
	# save mount table
	cat /proc/mounts > $GENERAL_LOG/mounts.txt
	echo "cat /proc/mounts > $GENERAL_LOG/mounts.txt"
	############################################################################################
	getenforce > $GENERAL_LOG/getenforce.txt
	echo "getenforce > $GENERAL_LOG/getenforce.txt"
	############################################################################################
	# save property
	getprop > $GENERAL_LOG/getprop.txt
	echo "getprop > $GENERAL_LOG/getprop.txt"
	############################################################################################
	# save network info
	cat /proc/net/route > $GENERAL_LOG/route.txt
	echo "cat /proc/net/route > $GENERAL_LOG/route.txt"
	netcfg > $GENERAL_LOG/ifconfig.txt
	echo "ifconfig -a > $GENERAL_LOG/ifconfig.txt"
	netstat -anlp > $GENERAL_LOG/netstat.txt
	echo "netstat -anlp > $GENERAL_LOG/netstat.txt"
	date && ip rule > $GENERAL_LOG/iprule.txt
	echo "date && ip rule > $GENERAL_LOG/iprule.txt"
	############################################################################################
	# save software version
	echo "AP_VER: `getprop ro.build.display.id`" > $GENERAL_LOG/version.txt
	echo "CP_VER: `getprop gsm.version.baseband`" >> $GENERAL_LOG/version.txt
	echo "BT_VER: `getprop vendor.bt.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop vendor.wifi.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop wigig.version.driver`" >> $GENERAL_LOG/version.txt
	echo "WIFI_VER: `getprop wigig.dock.version.driver`" >> $GENERAL_LOG/version.txt
	echo "GPS_VER: `getprop vendor.gps.version.driver`" >> $GENERAL_LOG/version.txt
	echo "BUILD_DATE: `getprop ro.build.date`" >> $GENERAL_LOG/version.txt
	############################################################################################
	# save load kernel modules
	lsmod > $GENERAL_LOG/lsmod.txt
	echo "lsmod > $GENERAL_LOG/lsmod.txt"
	############################################################################################
	# save process now
	ps > $GENERAL_LOG/ps.txt
	echo "ps > $GENERAL_LOG/ps.txt"
	ps -eo f,s,uid,pid,ppid,c,pri,ni,bit,sz,%mem,%cpu,wchan,tty,time,cmd > $GENERAL_LOG/ps_all.txt
	echo "ps > $GENERAL_LOG/ps_all.txt"
	ps -A -T > $GENERAL_LOG/ps_thread.txt
	echo "ps > $GENERAL_LOG/ps_thread.txt"
	############################################################################################
	# save kernel message
	dmesg > $GENERAL_LOG/dmesg.txt
	echo "dmesg > $GENERAL_LOG/dmesg.txt"
	############################################################################################
	# copy data/log to data/media
	#$BUSYBOX ls -R -l /data/log/ > $GENERAL_LOG/ls_data_log.txt
	#mkdir $GENERAL_LOG/log
	#$BUSYBOX cp /data/log/* $GENERAL_LOG/log/
	#echo "$BUSYBOX cp /data/log $GENERAL_LOG"
	############################################################################################
	# copy data/tombstones to data/media
	ls -R -l /data/tombstones/ > $GENERAL_LOG/ls_data_tombstones.txt
	mkdir $GENERAL_LOG/tombstones
	cp /data/tombstones/* $GENERAL_LOG/tombstones/
	echo "cp /data/tombstones $GENERAL_LOG"	
	############################################################################################
	mkdir $GENERAL_LOG/gpu
	cp -r /data/vendor/gpu/* $GENERAL_LOG/gpu
	rm -r /data/vendor/gpu/*
	ls -R -l /data/vendor/gpu > $GENERAL_LOG/ls_vendor_gpu.txt
	############################################################################################
	ls -R -l /asdf > $GENERAL_LOG/ls_asdf.txt
	############################################################################################
#	chmod 777 /vendor/logfs
	chmod 777 /vendor/logfs
#	log "wei +++++"
#	mount -t vfat /dev/block/bootdevice/by-name/logfs /vendor/logfs
	mount -t vfat /dev/block/bootdevice/by-name/logfs /vendor/logfs
	cp -r /vendor/logfs $GENERAL_LOG

	# copy Debug Ion information to data/media
	mkdir $GENERAL_LOG/ION_Debug
	cp -r /d/ion/* $GENERAL_LOG/ION_Debug/
	############################################################################################
	cp -r /sdcard/mocmna $GENERAL_LOG/ION_Debug/
	############################################################################################
	# copy data/logcat_log to data/media
	mkdir $GENERAL_LOG/logcat_log
	ls -R -lZ /data/logcat_log/ > $GENERAL_LOG/ls_data_logcat_log.txt
	cp -r /data/logcat_log/logcat* $GENERAL_LOG/logcat_log
	cp -r /data/logcat_log/kernel* $GENERAL_LOG/logcat_log
	cp -r /data/logcat_log/capture* $GENERAL_LOG/logcat_log
	echo "cp -r /data/logcat_log $GENERAL_LOG"
	#rm /data/logcat_log/*
	rm -r /data/logcat_log/logcat.txt.*
	rm -r /data/logcat_log/logcat-events.txt.*
	rm -r /data/logcat_log/logcat-radio.txt.*
	rm -r /data/logcat_log/kernel.log.*
	#echo "$BUSYBOX cp -r /data/logcat_log $GENERAL_LOG"
	#mkdir $GENERAL_LOG/logcat_log
	# logcat & radio
	#	for x in logcat logcat-radio logcat-events
	#	do
	#@		cp /data/logcat_log/$x.txt /data/logcat_log/$x.txt.0
	#		mv /data/logcat_log/$x.txt.* $GENERAL_LOG/logcat_log
	#	done

	# copy logcat/logcat_log to data/media
	mkdir $GENERAL_LOG/logcat
	mkdir $GENERAL_LOG/logcat/logcat_log
	ls -R -lZ /logcat/logcat_log/ > $GENERAL_LOG/ls_logcat_logcat_log.txt
	cp -r /logcat/logcat_log/logcat* $GENERAL_LOG/logcat/logcat_log
	cp -r /logcat/logcat_log/kernel* $GENERAL_LOG/logcat/logcat_log
	cp -r /logcat/logcat_log/capture* $GENERAL_LOG/logcat/logcat_log
	echo "cp -r /logcat/logcat_log $GENERAL_LOG"
	#rm /logcat/logcat_log/*
	rm -r /logcat/logcat_log/logcat.txt.*
	rm -r /logcat/logcat_log/logcat-events.txt.*
	rm -r /logcat/logcat_log/logcat-radio.txt.*
	rm -r /logcat/logcat_log/kernel.log.*
	############################################################################################
	# copy /asdf/ASUSEvtlog.txt to ASDF
	cp -r /asdf/asdf_logcat $GENERAL_LOG
	cp -r /asdf/logcat-crash.txt* $GENERAL_LOG/asdf_logcat
	cp -r /sdcard/asus_log/ASUSEvtlog.txt $GENERAL_LOG #backward compatible
	cp -r /sdcard/asus_log/ASUSEvtlog_old.txt $GENERAL_LOG #backward compatible
	cp -r /asdf/ASUSEvtlog.txt $GENERAL_LOG
	cp -r /asdf/ASUSEvtlog_old.txt $GENERAL_LOG
	cp -r /asdf/ASUSEvtlog.tar.gz $GENERAL_LOG
	cp -r /asdf/ASDF $GENERAL_LOG
	cp -r /asdf/dumpsys_meminfo $GENERAL_LOG && rm -r /asdf/dumpsys_meminfo
	# copy dumpsys sensnorservice log for power issue
	cp -r /asdf/sensor/dumpsys_sensorservice*.txt $GENERAL_LOG && rm -r /asdf/sensor/dumpsys_sensorservice*.txt
	cp -r /asdf/ $GENERAL_LOG/asdf2
	echo "cp -r /asdf/ASUSEvtlog.txt $GENERAL_LOG"

	for fname in /asdf/ASUSSlowg*
	do
		if [ -e $fname ]; then
			echo "$fname found!" >/dev/kmsg 
			rm $fname
		fi
	done
	############################################################################################
	# save charger information
	mkdir $GENERAL_LOG/charger_debug/
	cat /sys/devices/platform/11d04000.i2c/i2c-7/7-0053/rt9490-chg.1.auto/dump_all_registers > $GENERAL_LOG/charger_debug/rt9490_reg.txt
	cat /sys/devices/platform/11d04000.i2c/i2c-7/7-0065/dump_all_registers > $GENERAL_LOG/charger_debug/nu2205_reg.txt
	cat /sys/class/power_supply/*/uevent > $GENERAL_LOG/charger_debug/psy_event.txt
	cat /batinfo/.bh > $GENERAL_LOG/charger_debug/bat_health.txt
	#G###########################################################################################
        cat /proc/interrupts > $GENERAL_LOG/interrupts.txt
	# save sleep information
	cat /sys/power/rpmh_stats/master_stats > $GENERAL_LOG/charger_debug/master_stats.txt
	cat /sys/power/system_sleep/stats > $GENERAL_LOG/charger_debug/system_sleep.txt
	##############################################################################################
	AudioServerPid=`ps -ef | grep "audioserver " | sed '1d' | awk '{print $2}'`
	pmap $AudioServerPid > $GENERAL_LOG/AudioServerMap.txt
	############################################################################################
	# backup wlan_logs
	WLAN_LOGS_BACKUP_PATH="/data/media/0/asus_log/wlan_logs_`date +%Y_%m_%d_%H_%M_%S`"
	mkdir -p $WLAN_LOGS_BACKUP_PATH
	echo "mkdir -p $WLAN_LOGS_BACKUP_PATH"
	chmod -R 777 $WLAN_LOGS_BACKUP_PATH
	cp -r /data/vendor/wifi/wlan_logs/* $WLAN_LOGS_BACKUP_PATH
	echo "cp -r /data/vendor/wifi/wlan_logs/* $WLAN_LOGS_BACKUP_PATH"
	sync
	echo "tar -czf $WLAN_LOGS_BACKUP_PATH.tar.gz . -C $WLAN_LOGS_BACKUP_PATH"
	wait_cmd=`tar -czf $WLAN_LOGS_BACKUP_PATH.tar.gz . -C $WLAN_LOGS_BACKUP_PATH`
	sync
	echo "rm -rf $WLAN_LOGS_BACKUP_PATH"
	rm -rf $WLAN_LOGS_BACKUP_PATH
	sync
	############################################################################################
	# capture cnss ipc logs
	cat /sys/kernel/debug/ipc_logging/pcie0-long/log > $GENERAL_LOG/pcie0-long_host.txt
	cat /sys/kernel/debug/ipc_logging/pcie0-short/log > $GENERAL_LOG/pcie0-short_host.txt
	cat /sys/kernel/debug/ipc_logging/pcie0-dump/log > $GENERAL_LOG/pcie0-dump_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss/log > $GENERAL_LOG/cnss_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-mhi/log > $GENERAL_LOG/cnss_mhi_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-mhi-cntrl/log > $GENERAL_LOG/cnss_mhi_host.txt
	cat /sys/kernel/debug/ipc_logging/cnss-long/log > $GENERAL_LOG/cnss_long_host.txt
	# capture cnss ipc logs
	dmabuf_dump > $GENERAL_LOG/dmabuf_dump.txt 
	############################################################################################
	if [ ".$isBetaUser" == ".1" ]; then
		cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStore.xml $GENERAL_LOG
		echo "cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStore.xml $GENERAL_LOG"
		cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml $GENERAL_LOG
		echo "cp -r /data/misc/apexdata/com.android.wifi/WifiConfigStoreSoftAp.xml $GENERAL_LOG"
		cp -r /data/misc/wifi/WifiViceConfigStore.xml $GENERAL_LOG
		echo "cp -r /data/misc/wifi/WifiViceConfigStore.xml $GENERAL_LOG"

		ls -R -l /data/vendor/wifi > $GENERAL_LOG/ls_wifi_asus_log.txt

		cp -r /data/vendor/wifi/wpa/wpa_supplicant.conf $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wpa/wpa_supplicant.conf $GENERAL_LOG"

		cp -r /data/vendor/wifi/wpa/p2p_supplicant.conf $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wpa/p2p_supplicant.conf $GENERAL_LOG"

		if [ -f "/data/vendor/wifi/hostapd/hostapd_wlan1.conf" ]; then
			cp -r /data/vendor/wifi/hostapd/hostapd_wlan1.conf $GENERAL_LOG
			echo "cp -r /data/vendor/wifi/hostapd/hostapd_wlan1.conf $GENERAL_LOG"
		fi

		if [ -f "/data/vendor/wifi/hostapd/hostapd_wlan2.conf" ]; then
			cp -r /data/vendor/wifi/hostapd/hostapd_wlan2.conf $GENERAL_LOG
			echo "cp -r /data/vendor/wifi/hostapd/hostapd_wlan2.conf $GENERAL_LOG"
		fi

		# copy /sdcard/wlan_logs/*_current.txt
		cp -r /data/vendor/wifi/wlan_logs/cnss_fw_logs_current.txt $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wlan_logs/cnss_fw_logs_current.txt $GENERAL_LOG"
		cp -r /data/vendor/wifi/wlan_logs/host_driver_logs_current.txt $GENERAL_LOG
		echo "cp -r /data/vendor/wifi/wlan_logs/host_driver_logs_current.txt $GENERAL_LOG"

		# copy wlan ramdump
		mkdir $GENERAL_LOG/ssr_ramdump
		cp -r /data/vendor/ramdump/ssr_ramdump/wlan* $GENERAL_LOG/ssr_ramdump/
		rm -r /data/vendor/ramdump/ssr_ramdump/wlan*
		echo "cp -r /data/vendor/ramdump/ssr_ramdump/wlan* $GENERAL_LOG/ssr_ramdump"
	else
		echo "cp -r $WLAN_LOGS_BACKUP_PATH.tar.gz $GENERAL_LOG"
		cp -r $WLAN_LOGS_BACKUP_PATH.tar.gz $GENERAL_LOG
		sync
		echo "rm -rf /data/vendor/wifi/wlan_logs/*"
		rm -rf /data/vendor/wifi/wlan_logs/*
		echo "rm -rf $WLAN_LOGS_BACKUP_PATH.tar.gz"
		rm -rf $WLAN_LOGS_BACKUP_PATH.tar.gz
		sync
	fi
	############################################################################################
	cp -r /data/misc/update_engine_log $GENERAL_LOG
	############################################################################################
	# mv /data/anr to data/media
	ls -R -l /data/anr > $GENERAL_LOG/ls_data_anr.txt
	mkdir $GENERAL_LOG/anr
	cp /data/anr/* $GENERAL_LOG/anr/
	echo "cp /data/anr $GENERAL_LOG"
	############################################################################################
	# save system information
	mkdir $DUMPSYS_DIR
	for x in SurfaceFlinger window activity input_method alarm power battery meminfo batterystats sensorservice; do
		dumpsys -t 30 $x > $DUMPSYS_DIR/$x.txt
		echo "dumpsys $x > $DUMPSYS_DIR/$x.txt"
	done

	dumpsys -t 50 > $GENERAL_LOG/dumpsys.txt

	############################################################################################
	# [BugReporter]Save ps.txt to Dumpsys folder
	ps -A  > $DUMPSYS_DIR/ps.txt
	############################################################################################
	date > $GENERAL_LOG/date.txt
	echo "date > $GENERAL_LOG/date.txt"
	############################################################################################	
	# save debug report
    #dumpstate -q > $GENERAL_LOG/dumpstate.txt
    #echo "dumpstate > $DUMPSYS_DIR/dumpstate.txt"
#	dumpstate -q -d -z -o $BUGREPORT_PATH/bugreport
#	for filename in $BUGREPORT_PATH/*; do
#	    name=${filename##*/}
#	    cp $filename  $GENERAL_LOG/$name
#	    rm $filename
#	done
	############################################################################################
	mkdir $GENERAL_LOG/tencent
	chmod 777 $GENERAL_LOG/tencent
	for pid in `ps -ef | grep "tencent"| awk '{print $2}'` ; do
		name=`cat /proc/$pid/comm`
		pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
		cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
		cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
	done

	for pid in `ps -ef | grep "audioserver"| awk '{print $2}'` ; do
		name=`cat /proc/$pid/comm`
		pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
		cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
		cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
	done

	for pid in `ps -ef | grep "system_server"| awk '{print $2}'` ; do
		name=`cat /proc/$pid/comm`
		pmap $pid > $GENERAL_LOG/tencent/${name}_pmap.txt
		cat /proc/$pid/maps > $GENERAL_LOG/tencent/${name}_maps.txt
		cat /proc/$pid/smaps > $GENERAL_LOG/tencent/${name}_smaps.txt
	done
	############################################################################################
	micropTest=`cat /sys/class/switch/pfs_pad_ec/state`
	if [ "${micropTest}" = "1" ]; then
		date > $GENERAL_LOG/microp_dump.txt
		cat /d/gpio >> $GENERAL_LOG/microp_dump.txt                   
		echo "cat /d/gpio > $GENERAL_LOG/microp_dump.txt"  
		cat /d/microp >> $GENERAL_LOG/microp_dump.txt
		echo "cat /d/microp > $GENERAL_LOG/microp_dump.txt"
	fi
	############################################################################################
	df > $GENERAL_LOG/df.txt
	echo "df > $GENERAL_LOG/df.txt"
	###########################################################################################
	lsof > $GENERAL_LOG/lsof.txt
	mkdir  $GENERAL_LOG/ap_ramdump
	cp -r  /data/media/ap_ramdump/* $GENERAL_LOG/ap_ramdump/
	mkdir  $GENERAL_LOG/recovery
	cp -r  /cache/recovery/* $GENERAL_LOG/recovery
	vmstat 1 5 > $GENERAL_LOG/vmstat.txt
	mkdir $GENERAL_LOG/Power_Err_log
	cp /asdf/ASUS_*.txt $GENERAL_LOG/Power_Err_log
	#############################################################################################
	dd if=/dev/block/bootdevice/by-name/ftm of=/data/vendor/ramdump/miniramdump_header.txt bs=4 count=2

	var=$(cat /data/vendor/ramdump/miniramdump_header.txt)
	if test "$var" = "MiniDump"
	then
		#echo Found Raw Ram Dump!
		#echo Start to dump...
		echo "Raw_Dmp!" > /data/vendor/ramdump/miniramdump_header.txt
		dd if=/data/vendor/ramdump/miniramdump_header.txt of=/dev/block/bootdevice/by-name/ftm bs=4 count=2
		dd if=/dev/block/bootdevice/by-name/ftm of=/data/vendor/ramdump/MiniRawRamDump.bin
		tar -czvf $GENERAL_LOG/MiniRawRamDump.tgz /data/vendor/ramdump/MiniRawRamDump.bin

		rm /data/vendor/ramdump/MiniRawRamDump.bin
		rm /data/vendor/ramdump/miniramdump_header.txt
		dd if=/dev/zero of=/dev/block/bootdevice/by-name/ftm bs=4 count=2
		#am broadcast -a android.intent.action.MEDIA_MOUNTED --ez read-only false -d file:///storage/emulated/0/ -p com.android.providers.media
		#echo Finish!
#else
		#echo Not Found Raw Ram Dump.
	fi

	dd if=/dev/block/bootdevice/by-name/misc  of=$GENERAL_LOG/misc.bin bs=1024 count=1024
	cp -r /metadata/ota $GENERAL_LOG
	############################################################################################
	#mv /data/media/0/ssr_ramdump/ $SAVE_LOG_PATH
	cp -r  /data/media/0/ssr_ramdump/ $GENERAL_LOG
	#rm -r  /data/media/0/ssr_ramdump/
	echo "mv /data/media/0/ssr_ramdump $GENERAL_LOG"
	cp -r /data/aee_exp  $GENERAL_LOG

	bugreportz > $GENERAL_LOG/bugreportz_log.txt
	for filename in $BUGREPORT_PATH/*; do
		name=${filename##*/}
		cp $filename  $GENERAL_LOG/$name
		rm $filename
	done
	cp -r /data/debuglogger/ $GENERAL_LOG
#	cp -r /data/debuglogger/mobilelog/ $GENERAL_LOG
	rm -r /data/misc/bluetooth/logs/*.*
	rm -r /data/vendor/ramdump/bluetooth/*.*
	############################################################################################
#	dumpstate -q -d -z -o $GENERAL_LOG/bugreport

chmod -R 777 $GENERAL_LOG

am broadcast -a com.asus.savelogs.completed -n com.asus.loguploader/.logtool.LogtoolReceiver
setprop persist.vendor.asus.savelogs.complete 0
setprop persist.vendor.asus.savelogs.complete 1

}

save_modem_log() {
	mv /data/media/diag_logs/QXDM_logs $MODEM_LOG 
	echo "mv /data/media/diag_logs/QXDM_logs $MODEM_LOG"
}

save_tcpdump_log() {
	if [ -d "/data/logcat_log" ]; then
		if [ ".$is_tcpdump_status" == ".running" ]; then
			stop tcpdump-warp
			mv /sdcard/asus_log/tcpdump $GENERAL_LOG
			start tcpdump-warp
			for fname in /data/logcat_log/capture.pcap*
			do
				if [ -e $fname ]; then
					if [ ".$fname" != "./data/logcat_log/capture.pcap0" ]; then
						mv $fname $TCP_DUMP_LOG
					fi
				fi
			done
		else
			mv /sdcard/asus_log/tcpdump $GENERAL_LOG
		fi
	fi
}

remove_folder() {
	# remove folder
	if [ -e $GENERAL_LOG ]; then
		rm -r $GENERAL_LOG
	fi
	
	if [ -e $MODEM_LOG ]; then
		rm -r $MODEM_LOG
	fi
	
	if [ -e $TCP_DUMP_LOG ]; then
		rm -r $TCP_DUMP_LOG
	fi

	if [ -e $DUMPSYS_DIR ]; then
		rm -r $DUMPSYS_DIR
	fi
	
	if [ $PLATFORM == "MTK" ]; then
	    if [ -e $MTK_DIR ]; then
		    rm -r $MTK_DIR
		fi
	fi
}

create_folder() {
	# create folder
	mkdir -p $GENERAL_LOG
	echo "mkdir -p $GENERAL_LOG"
	
	mkdir -p $MODEM_LOG
	echo "mkdir -p $MODEM_LOG"
	
	mkdir -p $TCP_DUMP_LOG
	echo "mkdir -p $GENERAL_LOG"
	
	if [ $PLATFORM == "MTK" ]; then
	    mkdir -p $MTK_DIR
		echo "mkdir -p $MTK_DIR"
	fi
}

clean_internal_folder() {
	rm -rf /data/vendor/ramdump/diag_logs/QXDM_logs/*.*
	rm -rf /data/vendor/tombstones/SDX55M/*.*
	rm -rf /data/media/0/asus_log/tcpdump/*.*
	rm -rf /data/misc/bluetooth/logs/*.*
	rm -rf /data/vendor/ssrdump/*.*
	rm -r /data/vendor/ramdump/bluetooth/*.*
	setprop persist.vendor.asus.savelogs 0
}

if [ ".$savelogs_prop" == ".0" ]; then
	remove_folder
    setprop persist.vendor.asus.uts com.asus.removelogs.completed
    setprop persist.vendor.asus.savelogs.complete 0
    setprop persist.vendor.asus.savelogs.complete 1
#	am broadcast -a "com.asus.removelogs.completed"
elif [ ".$savelogs_prop" == ".1" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	remove_folder

	# create folder
	create_folder
	
	# save_general_log
	save_general_log
	
	if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
	fi	
	
	############################################################################################
	# sync data to disk 
	# 1015 sdcard_rw
	chmod -R 777 $GENERAL_LOG
	sync

#    setprop persist.asus.uts com.asus.savelogs.completed
#    setprop persist.asus.savelogs.complete 0
#    setprop persist.asus.savelogs.complete 1
	#am broadcast -a "com.asus.savelogs.completed"
 
	echo "Done"
elif [ ".$savelogs_prop" == ".2" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	remove_folder

	# create folder
	create_folder
	
	# save_modem_log
	save_modem_log
	
	############################################################################################
	# sync data to disk 
	# 1015 sdcard_rw
	chmod -R 777 $MODEM_LOG
	sync

    setprop persist.vendor.asus.uts com.asus.savelogs.completed
    setprop persist.vendor.asus.savelogs.complete 0
    setprop persist.vendor.asus.savelogs.complete 1
	#am broadcast -a "com.asus.savelogs.completed"
 
	echo "Done"
elif [ ".$savelogs_prop" == ".3" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	remove_folder

	# create folder
	create_folder
	
	# save_tcpdump_log
	save_tcpdump_log
	
	############################################################################################
	# sync data to disk 
	# 1015 sdcard_rw
	chmod -R 777 $TCP_DUMP_LOG
	sync

    setprop persist.vendor.asus.uts com.asus.savelogs.completed
    setprop persist.vendor.asus.savelogs.complete 0
    setprop persist.vendor.asus.savelogs.complete 1
#	am broadcast -a "com.asus.savelogs.completed"
 
	echo "Done"
elif [ ".$savelogs_prop" == ".4" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	remove_folder

	# create folder
	create_folder
	
	# save_general_log
	save_general_log
	
	# save_modem_log
	save_modem_log
	
	# save_tcpdump_log
	save_tcpdump_log
	
	############################################################################################
	# sync data to disk 
	# 1015 sdcard_rw
	chmod -R 777 $GENERAL_LOG
	chmod -R 777 $MODEM_LOG
	chmod -R 777 $TCP_DUMP_LOG
elif [ ".$savelogs_prop" == ".5" ]; then
	# Phone, signal and mobile networks
	# check mount file
	umask 0;
	sync
	############################################################################################
	export_general_log
	if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
		
		export_mtk_modem_log
		
		export_mtk_network_log
	else
	    export_ramdump_log

	    export_tombstones_log

	    export_tcpdump_log
	fi
	############################################################################################
	send_movelog_complete
elif [ ".$savelogs_prop" == ".6" ]; then
	# WIFI
	# check mount file
	umask 0;
	sync
	############################################################################################
	export_general_log

	if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
		
		export_mtk_network_log
		
		export_mtk_connsyslog_fw_log
	else	
	    export_ramdump_log

	    export_tcpdump_log

	    export_tombstones_log
	fi
	############################################################################################
	send_movelog_complete
elif [ ".$savelogs_prop" == ".7" ]; then
	# BT
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	export_general_log

    if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
		
		export_mtk_connsyslog_fw_log
		
		export_mtk_connsyslog_hci_log
	else
	    export_ramdump_log

	    export_bluetooth_log

	    export_bluetooth_ramdump_log
	fi
	############################################################################################
	send_movelog_complete
elif [ ".$savelogs_prop" == ".8" ]; then
	# Location services
	# check mount file
	umask 0;
	sync
	############################################################################################
	export_general_log

    if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
		
		export_mtk_modem_log
		
		export_mtk_network_log
		
		export_mtk_gpshost_log
	else	
	    export_ramdump_log
	fi
	############################################################################################
	send_movelog_complete
elif [ ".$savelogs_prop" == ".9" ]; then
	# Audio, scound recording, call audio
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	export_general_log

    if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
		
		export_mtk_modem_log
	else
	    export_ramdump_log
	fi
	############################################################################################
	send_movelog_complete
elif [ ".$savelogs_prop" == ".10" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# remove folder
	remove_folder

	# create folder
	create_folder

	# save_general_log
	export_general_log
	
	if [ $PLATFORM == "MTK" ]; then
	    export_mtk_mobile_log
	fi
	############################################################################################
	# sync data to disk
	# 1015 sdcard_rw
	chmod -R 777 $ROOT_PATH
	sync
	send_movelog_complete
	echo "Done"
elif [ ".$savelogs_prop" == ".99" ]; then
	# check mount file
	umask 0;
	sync
	############################################################################################
	# clean internal folder
	clean_internal_folder
fi

startlog_flag=`getprop persist.vendor.asus.startlog`
if test "$startlog_flag" -eq 0; then
	echo 0 > /sys/fs/selinux/log
else
	echo 1 > /sys/fs/selinux/log
fi
