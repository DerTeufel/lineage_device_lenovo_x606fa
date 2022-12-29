LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PRODUCT), lineage_x606fa)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt8768.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.mt8768.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := adbenable
LOCAL_SRC_FILES     := adbenable.sh
LOCAL_MODULE_SUFFIX := .sh
LOCAL_MODULE_CLASS  := EXECUTABLES
include $(BUILD_PREBUILT)

endif
