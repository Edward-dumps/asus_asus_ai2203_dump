#!/vendor/bin/sh
#country.sh

## Use COUNTRY to set default_network
LOG_TAG="COUNTRY"

if test -f /vendor/factory/COUNTRY; then
   COUNTRYCODE=`cat /vendor/factory/COUNTRY | tr '[a-z]' '[A-Z]'`
   ##COUNTRYCODE=`getprop ro.vendor.config.versatility`
fi

case "$COUNTRYCODE" in
    "CN")
        setprop vendor.telephony.default_network 33,33,33,33
        setprop ro.vendor.asus.network.types 11
        setprop ro.vendor.mtk_protocol1_rat_config N/C/Lf/Lt/W/G
        setprop ro.vendor.mtk_ps1_rat N/C/Lf/Lt/W/G
        ;;
#TW/EU/FR/HK/JP enable 5G, 5G default on (2G/3G/4G/5G)
    "TW" | "EU" | "FR" | "HK" | "JP")
        setprop vendor.telephony.default_network 33,33,33,33
        setprop ro.vendor.asus.network.types 11
        setprop ro.vendor.mtk_protocol1_rat_config N/Lf/Lt/W/G
        setprop ro.vendor.mtk_ps1_rat N/Lf/Lt/W/G
        ;;
#Others enable 5G, 5G default off (2G/3G/4G)
    *)
        setprop vendor.telephony.default_network 22,22,22,22
        setprop ro.vendor.asus.network.types 11
        setprop ro.vendor.mtk_protocol1_rat_config N/Lf/Lt/W/G
        setprop ro.vendor.mtk_ps1_rat N/Lf/Lt/W/G
        ;;
esac

