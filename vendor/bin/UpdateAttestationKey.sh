#!/vendor/bin/sh

ret=`kmsetkey_ca -i /mnt/vendor/persist/ASUS_AI2203-keybox.bin | awk '{print $3}' | tail -n 1`

if test $ret = "0"; then
	echo 1
else
	echo 0
fi
sleep 3
if test -e "/mnt/vendor/persist/attest_keybox.so"; then
        setprop vendor.atd.keymaster.ready TRUE
else
        setprop vendor.atd.keymaster.ready FALSE
fi

