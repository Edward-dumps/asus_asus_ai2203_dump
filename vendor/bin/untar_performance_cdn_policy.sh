#!/vendor/bin/sh
if test -f "/data/vendor/BBY/ASUS_AI2203-thermal_policy_cdn.cdn"; then
    rm /data/vendor/thermal/*.conf
    rm /data/vendor/powerhal/*.xml
    rm /data/vendor/powerhal/*.conf
    rm /data/vendor/BBY/policy_cdn.csv
    chown system:system /data/vendor/BBY/ASUS_AI2203-thermal_policy_cdn.cdn
    tar xvf /data/vendor/BBY/ASUS_AI2203-thermal_policy_cdn.cdn -C /data/vendor/BBY
    mv /data/vendor/BBY/thermal*.conf /data/vendor/thermal/ 
    mv /data/vendor/BBY/*.conf /data/vendor/powerhal/
    mv /data/vendor/BBY/*.xml /data/vendor/powerhal/
    mv /data/vendor/BBY/ASUS_AI2203-thermal_policy_cdn.cdn /data/vendor/BBY/ASUS_AI2203-thermal_policy_cdn.cdn_saved
fi

