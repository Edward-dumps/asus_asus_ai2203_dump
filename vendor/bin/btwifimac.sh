btmac=`sed -n '1 p' /vendor/factory/bd_addr.conf|sed 's/://g'`
setprop ro.vendor.btmac $btmac
setprop vendor.bt.version.driver t-neptune-main-soc7_0-2104-LEPIN_SOC7_0_E1_ASIC-20221006130042

wifi_mac=`sed -n '1 p' /vendor/factory/wifi_mac.txt`
setprop ro.vendor.wifimac $wifi_mac
wifi_mac=`sed -n '2 p' /vendor/factory/wifi_mac.txt`
setprop ro.vendor.wifimac_2 $wifi_mac
setprop vendor.wifi.version.driver t-neptune-main-soc7_0-2104-LEPIN_SOC7_0_E1_ASIC-20221006130042
