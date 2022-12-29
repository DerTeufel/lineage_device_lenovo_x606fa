$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_release.mk)

$(call inherit-product, device/lenovo/x606fa/device.mk)

PRODUCT_BRAND := lenovo
PRODUCT_NAME := x606fa
PRODUCT_DEVICE := lenovo_x606x
PRODUCT_MODEL := lenovo x606fa
