#!/vendor/bin/sh

retry=3

while [ "$retry" -gt 0 ]
do
	dongle_type=`getprop vendor.asus.dongletype`
	mic_type=`getprop vendor.asus.fan.mic`
	user_config=`getprop persist.vendor.asus.micfansettings`

	if [ "$dongle_type" == "8" ]; then
		if [ "$user_config" == "1" ] && [ "$mic_type" == "1" ]; then
			echo "[ROG6_INBOX][FanControl] turn off Fan cause by mic enable, retry=$retry" > /dev/kmsg
			echo 0 > /sys/class/leds/aura_inbox/fan_RPM
			echo 0 > /sys/class/leds/aura_inbox/cooling_en

			#check fan stop or not
			currentPWM=`cat /sys/class/leds/aura_inbox/fan_PWM`
			if [ "$fan_rpm" -eq 0 ] && [ "$currentPWM" -eq 0 ]; then
				#echo "[ROG6_INBOX][FanControl] Stop Fan Check Pass, retry=$retry" > /dev/kmsg
				exit
			fi
		else
			fan_rpm=`getprop persist.vendor.asus.userfanrpm`
			cooling_stage=`getprop persist.vendor.asus.coolerstage`
			echo "[ROG6_INBOX][FanControl] set FAN RPM = $fan_rpm, cooling stage = $cooling_stage, retry=$retry" > /dev/kmsg
			echo $fan_rpm > /sys/class/leds/aura_inbox/fan_RPM

			if [ $cooling_stage -gt 0 ]; then
				echo 1 > /sys/class/leds/aura_inbox/cooling_en
			else
				echo 0 > /sys/class/leds/aura_inbox/cooling_en
			fi
			echo $cooling_stage > /sys/class/leds/aura_inbox/cooling_stage

			#check fan later
			currentPWM=`cat /sys/class/leds/aura_inbox/fan_PWM`
			if [ "$fan_rpm" -gt 0 ] && [ "$currentPWM" -gt 0 ]; then
				#echo "[ROG6_INBOX][FanControl] Fan Check Pass, retry=$retry" > /dev/kmsg
				exit
			elif [ "$fan_rpm" -eq 0 ] && [ "$currentPWM" -eq 0 ]; then
				#echo "[ROG6_INBOX][FanControl] Fan Check Pass, retry=$retry" > /dev/kmsg
				exit
			fi
		fi
	fi
	((retry--))
	sleep 1
done
