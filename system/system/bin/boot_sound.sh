#!/system/bin/sh

echo "boot_sound" > /dev/kmsg

if [ -n "`getprop persist.sys.boot_sound.enabled`" ]; then
    echo "boot_sound: boot_sound_enabled exists" > /dev/kmsg
else
    setprop persist.sys.boot_sound.enabled 1
fi

auto_fota=`getprop persist.sys.boot_sound.autofota`
echo "boot_sound: auto_fota = $auto_fota" > /dev/kmsg
setprop persist.sys.boot_sound.autofota 0
if [ "$auto_fota" == "1" ]; then
    setprop sys.audio.boot_sound.completed true
    exit 0
fi

enabled=`getprop persist.sys.boot_sound.enabled`
echo "boot_sound: enabled = $enabled" > /dev/kmsg

vol_index=`getprop persist.sys.boot_sound.vol_index`
echo "boot_sound: vol_index = $vol_index" > /dev/kmsg

if [ "$enabled" == "1" ] && [ "$vol_index" != "0" ]; then
    i=0
    while [ -e /proc/asound/card${i} ]
    do
        if [ -e /proc/asound/card${i}/usbid ]; then
            card_id=`cat /proc/asound/card${i}/id`
            if [ "$card_id" == "U5683" ] || [ "$card_id" == "JEDI" ]; then
                echo "boot_sound: found ACCY usb sound card" > /dev/kmsg
            else
                snd_card_usb=$i
                echo "boot_sound: found usb sound card $snd_card_usb" > /dev/kmsg
            fi
        else
            card_id=`cat /proc/asound/card${i}/id`
            if [ "$card_id" == "mt6983mt6338" ]; then
                snd_card_mt6983mt6338=$i
                echo "boot_sound: found mt6983mt6338 sound card $snd_card_mt6983mt6338" > /dev/kmsg
            fi
        fi
        i=$(($i+1))
    done

    headset_status=`cat /sys/bus/platform/drivers/pmic-codec-accdet/state`
    echo "boot_sound: headset_status = $headset_status" > /dev/kmsg

    if [ -n "$snd_card_mt6983mt6338" ] ; then
        if [ -n "$snd_card_usb" ] ; then
            boot_sound_file="/vendor/etc/boot_sound_hs.wav"
            echo "boot_sound: boot_sound_file = $boot_sound_file" > /dev/kmsg
            echo "boot_sound: play boot sound from usb headset" > /dev/kmsg
            sleep 1.2
            /system/bin/tinyplay "$boot_sound_file" -D ${snd_card_usb}
        elif [ "$headset_status" == "1" ] || [ "$headset_status" == "2" ]; then
            boot_sound_file="/vendor/etc/boot_sound_hs.wav"
            echo "boot_sound: boot_sound_file = $boot_sound_file" > /dev/kmsg
            echo "boot_sound: play boot sound from headset" > /dev/kmsg
            sleep 1.2
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH1 DL1_CH1' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH2 DL1_CH2' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH3 DL1_CH1' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH4 DL1_CH2' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'DAC In Mux' 'Normal Path'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'HPL Mux' 'Audio Playback'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'HPR Mux' 'Audio Playback'
            /system/bin/tinyplay "$boot_sound_file" -D ${snd_card_mt6983mt6338}
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'HPL Mux' 'Open'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'HPR Mux' 'Open'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH1 DL1_CH1' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH2 DL1_CH2' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH3 DL1_CH1' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'ADDA_DL_CH4 DL1_CH2' '0'
        else
            boot_sound_file="/vendor/etc/boot_sound.wav"
            echo "boot_sound: boot_sound_file = $boot_sound_file" > /dev/kmsg
            echo "boot_sound: play boot sound from speaker" > /dev/kmsg
            sleep 1.2
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_CH1 DL1_CH1' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_CH2 DL1_CH2' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_HD_Mux' 'Low_Jitter'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV DACPCM Source' 'ASP_RX1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV DSP1 Enable Switch' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV AMP Enable Switch' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK DACPCM Source' 'ASP_RX2'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK DSP1 Enable Switch' '1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK AMP Enable Switch' '1'
            /system/bin/tinyplay "$boot_sound_file" -D ${snd_card_mt6983mt6338}
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV DSP1 Enable Switch' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV AMP Enable Switch' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'RCV DACPCM Source' 'DSP_TX1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK DSP1 Enable Switch' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK AMP Enable Switch' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'SPK DACPCM Source' 'DSP_TX1'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_CH1 DL1_CH1' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_CH2 DL1_CH2' '0'
            /system/bin/tinymix -D ${snd_card_mt6983mt6338} 'I2S3_HD_Mux' 'Normal'
        fi
    fi

    setprop sys.audio.boot_sound.completed true
    echo "boot_sound: finished" > /dev/kmsg
fi
