# stop battery safety upgrade
echo 3 >  /proc/Batt_Cycle_Count/batt_safety_csc

# copy battery safety & health data from /sdcard/ to batinfo
copy /sdcard/.bs /batinfo/.bs
copy /sdcard/bat_safety /batinfo/bat_safety
copy /sdcard/Batpercentage /batinfo/Batpercentage
# cp /sdcard/.bh /batinfo/.bh


# reload battery safety upgrade
# echo 9 >  /proc/Batt_Cycle_Count/batt_safety_csc

# start battery safety upgrade
# echo 4 >  /proc/Batt_Cycle_Count/batt_safety_csc

# delete temp file

# rm /sdcard/.bh

rm /sdcard/.bs
rm /sdcard/bat_safety
rm /sdcard/Batpercentage

reboot
