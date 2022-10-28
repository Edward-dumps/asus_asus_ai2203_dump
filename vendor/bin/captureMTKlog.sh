#/vendor/bin/sh


tar zcvf /asdf/vendor_aee_exp.tar.gz /data/vendor/aee_exp 2>/proc/asusevtlog 1>/proc/asusevtlog
dd if=/dev/block/by-name/expdb  of=/asdf/lk.txt bs=1 count=2093040 skip=0x07E00000

sleep 5



