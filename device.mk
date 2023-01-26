LOCAL_DIR := device/lenovo/x606fa

# Overwrite the inherited "emulator" characteristics
PRODUCT_CHARACTERISTICS := tablet
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Alexa
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# somehow hack a working adb #
PRODUCT_PACKAGES += \
    init.mt8768.rc \
    adb.rc

# launch custom apps when docked (instead of dreaming)
PRODUCT_PACKAGES += \
	DreamAppLauncher \
	Alexa \

# Bluetooth Audio (System-side HAL, sysbta)
PRODUCT_PACKAGES += \
    audio.sysbta.default \
    android.hardware.bluetooth.audio-service-system

# TrebleApp, packages/apps/TrebleApp, it is including everything it needs itself
# privapp-permissions-treble.xml android.hidl.manager-V1.0-java interfaces.xml
PRODUCT_PACKAGES += \
    TrebleApp

PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/bluetooth/audio/config/sysbta_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration.xml \
    $(LOCAL_DIR)/bluetooth/audio/config/sysbta_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysbta_audio_policy_configuration_7_0.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml

# FrameworkResOverlay (for changing config_voice_capable to true)
PRODUCT_PACKAGES += \
    FrameworkResOverlay \

# Touch
PRODUCT_PACKAGES += \
    lineage.touch@1.0-service.lenovo_x606
