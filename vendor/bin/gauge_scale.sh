#!/vendor/bin/sh

scale=`cat /sys/devices/platform/11d06000.i2c/i2c-9/9-0055/fg_soc_remap_scale`

setprop persist.vendor.battery.scale "$scale"

setprop vendor.battery.scale.update "0"

echo "persist.vendor.battery.scale $scale" > /dev/kmsg
