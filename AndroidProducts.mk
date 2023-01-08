LOCAL_DIR := device/lenovo/x606fa

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_x606fa.mk \
     $(LOCAL_DIR)/lineage_x606fa_vanilla.mk \


COMMON_LUNCH_CHOICES := \
    lineage_x606fa-user \
    lineage_x606fa-userdebug \
    lineage_x606fa_vanilla-user \
    lineage_x606fa_vanilla-userdebug \
