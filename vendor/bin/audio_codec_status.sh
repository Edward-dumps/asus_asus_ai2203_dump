#!/vendor/bin/sh
if [ -d "/proc/asound/mt6983mt6338/pcm0p" ]; then
    echo "1"
else
    echo "0"
fi
