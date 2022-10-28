#!/vendor/bin/sh
#waiting sepolicy
setprop vendor.vib.cali.state running...

rm -f /mnt/vendor/persist/vibrator/aw_cali.bin
rm -f /mnt/vendor/persist/vibrator/aw_rtp_cali.bin

cali_r=`cat /sys/class/leds/vibrator/cali`
sleep 1

echo 1:$cali_r
r=`echo $cali_r |grep fail`
echo 2:$r
len=`expr ${#r}`
echo len:$len

if [ $len -ne 0 ] ; then
  echo $cali_r
  echo "[VibCali_ship.sh] /mnt/vendor/persist/vibrator/aw_cali.bin: $cali_r ... Fail....." > /dev/kmsg
  setprop vendor.vib.cali.state Fail
  exit
fi

echo "[VibCali_ship.sh] /mnt/vendor/persist/vibrator/aw_cali.bin: $cali_r" > /dev/kmsg
echo -n $cali_r > /mnt/vendor/persist/vibrator/aw_cali.bin
setprop vendor.vib.cali.cali_r $cali_r

##*****************************************************

osc_cali_r=`cat /sys/class/leds/vibrator/osc_cali`

echo 1:$osc_cali_r
r=`echo $osc_cali_r |grep fail`
echo 2:$r
len=`expr ${#r}`
echo len:$len

if [ $len -ne 0 ] ; then
  echo $osc_cali_r
  echo "[VibCali_ship.sh] /mnt/vendor/persist/vibrator/aw_rtp_cali.bin: $cali_r ... Fail....." > /dev/kmsg
  setprop vendor.vib.cali.state Fail
  exit
fi

echo "[VibCali_ship.sh] /mnt/vendor/persist/vibrator/aw_rtp_cali.bin: $osc_cali_r" > /dev/kmsg
echo -n $osc_cali_r > /mnt/vendor/persist/vibrator/aw_rtp_cali.bin 
setprop vendor.vib.cali.osc_cali_r $osc_cali_r

echo PASS
setprop vendor.vib.cali.state PASS
