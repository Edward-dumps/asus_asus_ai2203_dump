#!/vendor/bin/sh
watchlog_flag=`getprop vendor.asus.audio.dump_stream`

if [ $watchlog_flag -ne 0 ]; then
    setprop vendor.asus.audio.dump_stream 0
    echo "[AudioLogWatcher]exit AudioLogWatcher" > /dev/kmsg
fi

chmod 0771 /data/vendor/audiohal/audio_dump/*.*
file_size=`du -m data/vendor/audiohal/audio_dump/ | cut -f1`

if [ $file_size -gt 1 ]; then
    echo "[AudioLogWatcher]start save audio dump log" > /dev/kmsg
    tar -czvf /asdf/auiohal.tgz /data/vendor/audiohal/audio_dump/*.*
    chmod 0777 /asdf/auiohal.tgz
    find data/vendor/audiohal/audio_dump/ -type f -delete 
    echo "[AudioLogWatcher]exit save audio dump log" > /dev/kmsg
fi


exit 0
