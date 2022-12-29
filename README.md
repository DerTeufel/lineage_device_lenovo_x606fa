# lineage_device_lenovo_x606fa

This is a device tree to build lineageOs-20 (as GSI) for Lenovo TB-X606XA,TB-X606FA and versions without 'A'

In order to boot, patches in https://github.com/DerTeufel/lineage_device_lenovo_x606fa/tree/lineage-20.0/patches/system/core need to be applied manually.

Since this is actually generating a GSI, it should boot on (m)any device(s), but it is inherenting tablet configs, and may look weird on phones.


How to install (on lenovo x606f(a)):
-----------------------------------------------------------------------------------------------------------------------------------------------------------
* only needed once:
- flash latest stock android 10 (at time of writing, this is 'TB-X606XA_USR_S300564_2206300939_V9.56_BMP_ROW', built at 'Thu Jun 30 10:29:58 CST 2022'
- allow oem unlocking in developer options
- reboot to bootloader and unlock it
- fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
-----------------------------------------------------------------------------------------------------------------------------------------------------------
* actually flash the system:
- fastboot flash system system.img
- wipe data when needed: fastboot- w
- fastboot reboot
-----------------------------------------------------------------------------------------------------------------------------------------------------------

a custom recovery (like TWRP) is not needed at all, but one can be found at xda devolpers:

https://forum.xda-developers.com/t/recovery-tb-x606f-tb-x606fa-unofficial-twrp-3-6-x-for-lenovo-tab-m10-fhd-plus.4222887/


-----------------------------------------------------------------------------------------------------------------------------------------------------------
If you don't understand obove instructions, better run away ;-)
