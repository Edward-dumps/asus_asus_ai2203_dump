#!/vendor/bin/sh

if [ -e /vendor/factory/aw_cali.bin ] ; then
cali=`cat /vendor/factory/aw_cali.bin`
echo $cali > /sys/class/leds/vibrator/f0_save
echo "[haptic] aw_cali.bin: $cali" > /dev/kmsg
else
echo "[haptic] aw_cali.bin is not exist" > /dev/kmsg
fi

if [ -e /vendor/factory/aw_rtp_cali.bin ] ; then
cali=`cat /vendor/factory/aw_rtp_cali.bin`
echo $cali > /sys/class/leds/vibrator/osc_save
echo "[haptic] aw_rtp_cali.bin: $cali" > /dev/kmsg
else
echo "[haptic] aw_rtp_cali.bin is not exist" > /dev/kmsg
fi
