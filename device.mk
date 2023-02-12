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

# offline charging
PRODUCT_PACKAGES += \
    kpoc_charger \

# power hal with lineage double tap 2 wake support
PRODUCT_COPY_FILES += \
    $(LOCAL_DIR)/android.hardware.power@1.3-impl-mediatek/lib64/hw/android.hardware.power@1.3-impl-mediatek.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/hw/android.hardware.power@1.3-impl-mediatek.so \
    $(LOCAL_DIR)/android.hardware.power@1.3-impl-mediatek/lib/hw/android.hardware.power@1.3-impl-mediatek.so:$(TARGET_COPY_OUT_SYSTEM)/lib/hw/android.hardware.power@1.3-impl-mediatek.so
