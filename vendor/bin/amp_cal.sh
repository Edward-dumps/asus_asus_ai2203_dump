#!/vendor/bin/sh
if [ "$(getenforce)" == "Permissive" ]; then
    setprop sys.audio.calibration 1
    echo "PASS"
else
    echo "FAIL"
fi
