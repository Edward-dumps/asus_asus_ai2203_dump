#!/system/bin/sh

# persist.sys.modem.restart
# 1:UI 2:ramdump 
#
reset_cmd="\"AT+ESWLA=0\\r\""
path="/dev/ttyC0"

function LOG () {
  log -p d -t ssr_cfg "$1"
}

prop=`getprop persist.logd.modem.restart`
prop_minidump=`getprop persist.vendor.mdlog.minidump`

restartlevel=$(($prop & 28))
dump=$((($prop & 2) / 2))

LOG "prop = ${prop}; restartlevel = ${restartlevel} ; dump = ${dump}; prop_minidump = ${prop_minidump}"

if [ ${dump} -ne 0 ] && [ ${prop_minidump} -eq 0 ]; then
	setprop persist.sys.mdlog_dumpback 2
	setprop persist.vendor.mdlog.need_dump 1
	setprop persist.vendor.mdlog.minidump 1
	LOG "reset Modem = ${reset_cmd}, path = ${path}"
	echo ${reset_cmd} > ${path} 

elif [ ${dump} -eq 0 ] ; then
	setprop persist.sys.mdlog_dumpback 0
	setprop persist.vendor.mdlog.need_dump 0
	setprop persist.vendor.mdlog.minidump 0
fi

