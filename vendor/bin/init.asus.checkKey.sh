#!/system/vendor/bin/sh

# Parameter Definition
# $1: Caller

setprop vendor.atd.keybox.ready FALSE
setprop vendor.atd.hdcp2p2.ready FALSE
setprop  vendor.atd.hdcp1.ready FALSE
setprop vendor.atd.hdcp.ready FALSE

if test -e "/mnt/vendor/persist/attest_keybox.so"; then
	setprop vendor.atd.keymaster.ready TRUE
else
	setprop vendor.atd.keymaster.ready FALSE 
fi

if test -e "/mnt/vendor/persist/hdcp.flg"; then
	setprop vendor.atd.hdcp.ready TRUE
else
	setprop vendor.atd.hdcp.ready FALSE
fi
	

x=`drmkeydebug q  | awk ' /keytype/ {print $3}'  | awk 'BEGIN{RS=","}{print $1}'`
arrIN=(${x// / })

for element in "${arrIN[@]}"
do
    if  test "$element" = "0"; then
	setprop vendor.atd.keybox.ready TRUE
    elif test "$element" = "2"; then
	setprop vendor.atd.hdcp1.ready TRUE
    elif test "$element" = "3"; then
	setprop vendor.atd.hdcp2p2.ready TRUE
    fi 
done

