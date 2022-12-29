#!/system/bin/sh

LOGFILE="/cache/adbenable.log"
echo "starting adbenable.sh" > $LOGFILE
exec >>$LOGFILE 2>&1
echo "" >> $LOGFILE
#getprop >> $LOGFILE
#echo "" >> $LOGFILE

exec /system/system_ext/apex/com.android.adbd/bin/adbd --root_seclabel=u:r:su:s0 &
#start adbd
pidof adbd


