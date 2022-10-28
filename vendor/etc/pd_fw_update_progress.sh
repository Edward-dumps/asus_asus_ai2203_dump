#!/vendor/bin/sh

trigger_type=`getprop vendor.fandg.pd_fwupdate`
type=`getprop vendor.asus.dongletype`
if [ "$type" != "8" ] && [ "$trigger_type" != "3" ]; then
	echo "[PD_INBOX] FANDG6 didn't exist. Type is $type" > /dev/kmsg
	setprop vendor.fandg.pd_fwupdate 0
	exit
fi

echo "[PD_INBOX] PD update progress start" > /dev/kmsg
stop_service=0

update_percentage=`cat /sys/class/leds/aura_inbox/pd_fw_update_progress`
while [ "$stop_service" != "1" ]
do
	type=`getprop vendor.asus.dongletype`
	update_percentage=`cat /sys/class/leds/aura_inbox/pd_fw_update_progress`
	echo "[PD_INBOX] update PD...$update_percentage" > /dev/kmsg
	setprop vendor.fandg.pd_update_progress "$update_percentage"
	if [ "$update_percentage" == "100" ]; then
		echo "[PD_INBOX] update PD complete" > /dev/kmsg
		stop_service=1
	else
		sleep 3
	fi
done

echo "[PD_INBOX] PD update progress end" > /dev/kmsg
exit
