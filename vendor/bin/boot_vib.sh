#!/vendor/bin/sh

dis_flag=`getprop persist.vendor.boot_vib.autofota`

if [ $dis_flag -eq 1 ] ; then
setprop persist.vendor.boot_vib.autofota 0
else
setprop vendor.asus.boot.vib 1
fi

vib_flag=`getprop vendor.asus.boot.vib`

if [ $vib_flag -eq 1 ] ; then

sleep 1.5
echo "boot vibration start .........." > /dev/kmsg
/vendor/bin/hw/vibratorcontrol_client rtp_play 60004

fi
