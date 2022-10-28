#!/vendor/bin/sh
startlog_flag=`getprop vendor.asus.audio.dump_stream`
zero_count = 0

echo "[AudioLogWatcher]start AudioLogWatcher" > /dev/kmsg
while [ $startlog_flag -eq 1 ]; do
    startlog_flag=`getprop vendor.asus.audio.dump_stream`
    if [ $startlog_flag -eq 0 ]; then
        break
    fi

    file_size=`du -m data/vendor/audiohal/audio_dump/ | cut -f1`
    if [ $file_size -lt 2048 ]; then # log < 2GB
        find data/vendor/audiohal/audio_dump/ -mtime +1m -type f -delete 
        #delete file which had been 1 min not modified , keep lasted files
        file_size=`du -m data/vendor/audiohal/audio_dump/ | cut -f1`
        echo "[AudioLogWatcher] dump state:$startlog_flag log size : $file_size MB " > /dev/kmsg

        sleep 1m

    else
        file_size=`du -m data/vendor/audiohal/audio_dump/ | cut -f1`
        echo "[AudioLogWatcher]log size $file_size MB too large, stop dump log and delete dump log" > /dev/kmsg
        find data/vendor/audiohal/audio_dump/ -type f -delete 
        setprop vendor.asus.audio.dump_stream 0
        break
    fi

done
echo "[AudioLogWatcher]exit AudioLogWatcher" > /dev/kmsg

file_size=`du -m data/vendor/audiohal/audio_dump/ | cut -f1`

if [ $file_size -gt 1 ]; then
    chmod 0771 /data/vendor/audiohal/audio_dump/*.*
    tar -czvf /asdf/audiohal.tgz /data/vendor/audiohal/audio_dump/*.*
    chmod 0777 /asdf/audiohal.tgz
    find data/vendor/audiohal/audio_dump/ -type f -delete 
fi

exit 0
