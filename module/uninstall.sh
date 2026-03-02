#!/system/bin/sh
{
	MODDIR=${0%/*}
	. "$MODDIR/config"

	rm "/data/adb/rvgc/${MODDIR##*/}.apk"
	rmdir "/data/adb/rvgc"
	rm "/data/adb/post-fs-data.d/$PKG_NAME-uninstall.sh"
} &
