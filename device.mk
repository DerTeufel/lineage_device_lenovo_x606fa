# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := tablet
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Gapps
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# somehow hack a working adb #
PRODUCT_PACKAGES += \
    init.mt8768.rc \

# launch custom apps when docked (instead of dreaming)
PRODUCT_PACKAGES += \
	DreamAppLauncher \

# Bluetooth Audio (System-side HAL, sysbta)
PRODUCT_PACKAGES += \
    audio.sysbta.default \
    android.hardware.bluetooth.audio-service-system

PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/bluetooth/audio/config/sysbta_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration.xml \
    $(LOCAL_DIR)/bluetooth/audio/config/sysbta_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUTY_SYSTEM)/etc/sysbta_audio_policy_configuration_7_0.xml
