#!/vendor/bin/sh

type=`getprop vendor.asus.dongletype`

echo "[ROG_ACCY] ROG DongleRemove, type $type" > /dev/kmsg
echo "[ROG_ACCY][Remove] No Dongle" > /dev/kmsg
echo "[ROG_ACCY][Remove] stop ROGDongleSwitch" > /dev/kmsg
stop ROGDongleSwitch

# Define rmmod function
function remove_mod(){

	if [ -n "$1" ]; then
		echo "[ROG_ACCY] remove_mod $1" > /dev/kmsg
	else
		exit
	fi

	test=1
	retry=1
	while [ "$test" == 1 -a "$retry" -le "5" ]
	do
		rmmod $1
		ret=`lsmod | grep $1`
		if [ "$ret" == "" ]; then
			echo "[ROG_ACCY] rmmod $1 success" > /dev/kmsg
			test=0
		else
			echo "[ROG_ACCY] rmmod $1 fail" > /dev/kmsg
			test=1
			sleep 0.5
		fi
		((retry++))
	done
}

# Remove all driver
#remove_mod ms51_backcover

stop RPM_Monitor

# do not add any action behind here
setprop vendor.asus.donglechmod 0

# force reset accy FW
setprop vendor.inbox.aura_fwver 0
setprop vendor.inbox.inbox_fwver 0
setprop vendor.inbox.pd_fwver 0
setprop vendor.asus.accy.fw_status 000000
setprop vendor.asus.accy.fw_status2 000000

# For IMS abnormal disconnect record.
#setprop vendor.oem.asus.inboxid 0

# Send uevent to FrameWork
#echo 0 > /sys/class/ec_hid/dongle/device/sync_state
