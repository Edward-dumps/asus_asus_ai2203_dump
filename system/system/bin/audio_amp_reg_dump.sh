#!/system/bin/sh

mode=`getprop sys.audio.amp.reg_dump`

if [ "$mode" == "1" ]; then
    /system/bin/tinymix 'RCV AMP Register Dump' '1'
    /system/bin/tinymix 'SPK AMP Register Dump' '1'
elif [ "$mode" == "2" ]; then
    /system/bin/tinymix 'RCV AMP Register Dump' '2'
    /system/bin/tinymix 'SPK AMP Register Dump' '2'
fi

setprop sys.audio.amp.reg_dump 0
