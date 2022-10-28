#!/vendor/bin/sh
fw_err=234
sleep 1.5
TP1_VER_PACK=`cat /sys/devices/platform/11e00000.i2c/i2c-0/0-0038/fts_fw_version`
echo "[FTS]FW version $TP1_VER_PACK" > /dev/kmsg
if [ "$((16#$TP1_VER_PACK))" == "${fw_err}" ]; then
sleep 7
TP1_VER_PACK=`cat /sys/devices/platform/11e00000.i2c/i2c-0/0-0038/fts_fw_version`
echo "[FTS]get FW version $TP1_VER_PACK" > /dev/kmsg
setprop vendor.touch.version.driver "$((16#$TP1_VER_PACK))"
else
setprop vendor.touch.version.driver "$((16#$TP1_VER_PACK))"
fi
