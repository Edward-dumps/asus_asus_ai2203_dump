#!/vendor/bin/sh

Capacity=`cat /sys/class/power_supply/bms/capacity`

if [ "$Capacity" == "100" ]; then
	echo 2 > /sys/class/leds/green/brightness
else
	echo 18 > /sys/class/leds/red/brightness
	echo 1 > /sys/class/leds/green/brightness
fi
