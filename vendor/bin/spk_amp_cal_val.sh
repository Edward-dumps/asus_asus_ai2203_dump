#!/vendor/bin/sh
if [ "$1" == "0" ]; then
    /vendor/bin/AudioAmpCalibration -r 1
else
    echo "Invaild argument"
fi
