#!/vendor/bin/sh

# savelog

primary_storage=`getprop vold.primary_storage`
SAVE_LOG_ROOT=/data/media/0/save_log
startlog_flag=`getprop persist.vendor.asus.startlog`
PATH=$PATH:/system/bin/
if [ ".$primary_storage" == ".sdcard" ]; then
        SAVE_LOG_ROOT="/mnt/expand/`getprop vold.microsd.uuid`/media/0/save_log"
fi

        umask 0;
        sync
############################################################################################
        # create savelog folder (UTC)
        SAVE_LOG_PATH="$SAVE_LOG_ROOT/`date +%Y_%m_%d_%H_%M_%S`"
        setprop vendor.asus.savelogmtp.folder $SAVE_LOG_PATH
	tar zcvf /asdf/vendor_aee_exp.tar.gz /data/vendor/aee_exp

start savelogmtp_sys



