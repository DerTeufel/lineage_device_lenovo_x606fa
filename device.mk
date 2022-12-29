# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := tablet
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Gapps
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# somehow hack a working adb #
PRODUCT_PACKAGES += \
    init.mt8768.rc \
    adbenable \
    init.mt8768.usb.configfs.rc

# launch custom apps when docked (instead of dreaming)
PRODUCT_PACKAGES += \
	DreamAppLauncher \
    
