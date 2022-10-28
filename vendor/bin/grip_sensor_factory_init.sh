#!/vendor/bin/sh

file_check(){
	if [ -f /vendor/factory/$1 ]; then
		echo "$1 file is exist"
	else
		echo "copy $1 file"
		cp /vendor/etc/grip_cal/$1 /vendor/factory/
		chown shell:shell /vendor/factory/$1
		chmod 777 /vendor/factory/$1
	fi
}
file_check grip_frame_check_result.txt
file_check grip_bar0_test_result.txt
file_check grip_bar1_test_result.txt
file_check grip_fw_fail_count.txt

cp /vendor/etc/grip_cal/snt_configs.txt /vendor/factory/
cp /vendor/etc/grip_cal/refwv /vendor/factory/
cp /vendor/etc/grip_cal/snt_tchwv_configs.txt /vendor/factory/
cp /vendor/etc/grip_cal/snt_deco_configs.txt /vendor/factory/
cp /vendor/etc/grip_cal/snt_wfmcfg /vendor/factory/
cp /vendor/etc/grip_cal/conf.json /vendor/factory/
cp /vendor/etc/grip_cal/perbar_conf.json /vendor/factory/
chown shell:shell /vendor/factory/refwv
chmod 777 /vendor/factory/refwv
exit 0
