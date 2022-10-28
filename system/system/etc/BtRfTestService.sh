#!/system/bin/sh

#myTool=/vendor/bin/autobt_server

#Make sure Bluetooth of UI is disable
#service call bluetooth_manager 8 > /dev/null 2> /dev/null
svc bluetooth disable

sleep 1

autobt_server

exit 0
