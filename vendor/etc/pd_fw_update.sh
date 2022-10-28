#!/vendor/bin/sh
trigger_type=`getprop vendor.fandg.pd_fwupdate`
echo "[PD_INBOX] pd_fw_update start with $trigger_type" > /dev/kmsg
if [ "$trigger_type" == "3" ]; then
	# turn on otg 5V and usb hub mode when trigger by apk
	echo "[PD_INBOX] Enable OTG 5V and switch on hub mode" > /dev/kmsg
	echo 1 > /sys/bus/platform/devices/a600000.ssusb/Inbox_enable
	echo 128,1 > /sys/class/asuslib/charger_limit_mode
	sleep 5	#wait for driver probe complete
fi

type=`getprop vendor.asus.dongletype`
if [ "$type" != "8" ] && [ "$trigger_type" != "3" ]; then
		echo "[PD_INBOX] FANDG6 didn't exist. Type is $type" > /dev/kmsg
		setprop vendor.fandg.pd_fwupdate 0
		echo 0 > /sys/bus/platform/devices/a600000.ssusb/Inbox_enable
		echo 128,0 > /sys/class/asuslib/charger_limit_mode
		exit
fi

setprop vendor.fandg.pd_update_progress 0
start InboxPdFWupdateProgress

fw_ver=`cat /sys/class/leds/aura_inbox/pd_fw_ver`
pd_asusfw_ver=`getprop vendor.asusfw.fandg6.pd_fwver`

echo "[PD_INBOX] PD update firmware start, current ver:$fw_ver, target ver:$pd_asusfw_ver" > /dev/kmsg
stop RPM_Monitor
echo 1 > /sys/class/leds/aura_inbox/pd_fw_update
echo "[PD_INBOX] PD update firmware end" > /dev/kmsg

if [ "$trigger_type" == "3" ]; then
	sleep 5
fi

#check fandongle reconnect
type=`getprop vendor.asus.dongletype`
wait_count=0
while [ "$type" != "8" ] && [ $wait_count -lt 30 ] && [ "$trigger_type" != "3" ]
do
	sleep 1
	echo "[PD_INBOX] Wait for fandg reconnect....$wait_count" > /dev/kmsg
	type=`getprop vendor.asus.dongletype`
	(( wait_count++ ))
done

verify_count=0
while [ "$verify_result" != "0" ] && [ "$verify_count" -lt "3" ]
do
	if [ "$trigger_type" == "3" ]; then
		echo "[PD_INBOX] Disable OTG 5V and switch off hub mode" > /dev/kmsg
		echo 0 > /sys/bus/platform/devices/a600000.ssusb/Inbox_enable
		echo 128,0 > /sys/class/asuslib/charger_limit_mode
		sleep 3
		echo "[PD_INBOX] Enable OTG 5V and switch on hub mode" > /dev/kmsg
		echo 1 > /sys/bus/platform/devices/a600000.ssusb/Inbox_enable
		echo 128,1 > /sys/class/asuslib/charger_limit_mode
		sleep 3
	fi

	echo "[PD_INBOX] PD update firmware verify......round $verify_count" > /dev/kmsg
	verify_result=`cat /sys/class/leds/aura_inbox/pd_fw_check`
	if [ "$verify_result" = "0" ]; then
		echo "[PD_INBOX] PD update firmware verify pass" > /dev/kmsg
		setprop vendor.fandg.pd_fwupdate 0
	else
		echo "[PD_INBOX] PD update firmware verify fail" > /dev/kmsg
		setprop vendor.fandg.pd_fwupdate 2
	fi
	(( verify_count++ ))
done

stop InboxPdFWupdateProgress
setprop vendor.fandg.pd_update_progress 0

if [ "$trigger_type" == "3" ]; then
	# turn off otg 5V and usb hub mode when trigger by apk
	echo "[PD_INBOX] Disable OTG 5V and switch off hub mode" > /dev/kmsg
	echo 0 > /sys/bus/platform/devices/a600000.ssusb/Inbox_enable
	echo 128,0 > /sys/class/asuslib/charger_limit_mode
fi
