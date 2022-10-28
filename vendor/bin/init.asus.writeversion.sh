#!/system/vendor/bin/sh


version_number=`getprop ro.build.version.incremental`


if [ -f /asdf/versionHistory.txt ]; then
	lastline=`sed -n '$p' /asdf/versionHistory.txt`
	x=$(echo $lastline|cut -d'@' -f 2)
	if [ $x != $version_number ]; then
		echo "`date "+%Y/%m/%d %H:%M:%S"`@ $version_number" >>/asdf/versionHistory.txt
	fi
else
	echo "` date "+%Y/%m/%d %H:%M:%S"`@ $version_number" > /asdf/versionHistory.txt
fi


