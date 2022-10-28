#!/vendor/bin/sh

Capacity=`cat /sys/class/power_supply/bms/capacity`

BATTERY=`cat /sys/class/power_supply/bms/asus_get_fw_version`
setprop vendor.battery.version.driver "$BATTERY"

BATTID=`cat /sys/class/power_supply/bms/asus_get_BattID`
if [ "115000" -ge "$BATTID" ] && [ "$BATTID" -ge "85000" ]; then
	BATTID="cos_100K"
elif [ "58650" -ge "$BATTID" ] && [ "$BATTID" -ge "43350" ]; then
	BATTID="cos_51K"
elif [ "11500" -ge "$BATTID" ] && [ "$BATTID" -ge "8500" ]; then
	BATTID="cos_10K"
fi
setprop vendor.battery.id.driver "$BATTID"

# if [ "$BATTERY" == "default-default" ] && [ "$Capacity" == 85 ]; then
# 	setprop vendor.battery.ssr.restart 1
# 	echo "[FG] battery.verion=$BATTERY and Capacity=$Capacity setprop for adsp ssr restart" > /dev/kmsg
# fi
echo "vendor.battery.version.driver $BATTERY vendor.battery.id.driver $BATTID Capacity $Capacity" > /dev/kmsg
