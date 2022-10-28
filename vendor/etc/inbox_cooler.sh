#!/vendor/bin/sh

dongle_type=`getprop vendor.asus.dongletype`

if [ "$dongle_type" == "8" ]; then
	cooler_stage=`getprop persist.vendor.asus.coolerstage`
	echo "[ROG6_INBOX] set cooler stage = $cooler_stage" > /dev/kmsg
	
	if [ "$cooler_stage" == "0" ]; then
		echo 0 > /sys/class/leds/aura_inbox/cooling_en
	else
		echo 1 > /sys/class/leds/aura_inbox/cooling_en
		sleep 0.1
		echo $cooler_stage > /sys/class/leds/aura_inbox/cooling_stage
	fi
fi

