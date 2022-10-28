# stop battery safety upgrade
echo 3 >  /proc/Batt_Cycle_Count/batt_safety_csc

# copy battery safety & health data from /sdcard/ to batinfo
copy /batinfo/.bs /sdcard/.bs
copy /batinfo/bat_safety /sdcard/bat_safety
copy /batinfo/Batpercentage /sdcard/Batpercentage

rm /batinfo/.bs
rm /batinfo/bat_safety
rm /batinfo/Batpercentage
# cp /batinfo/.bh /sdcard/.bh

# reload battery safety upgrade
# echo 9 >  /proc/Batt_Cycle_Count/batt_safety_csc

# start battery safety upgrade
echo 4 >  /proc/Batt_Cycle_Count/batt_safety_csc

# delete temp file
# rm /sdcard/.bs
# rm /sdcard/.bh
