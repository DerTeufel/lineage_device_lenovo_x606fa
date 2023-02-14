LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE       := init.mt8768.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.mt8768.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init/hw
include $(BUILD_PREBUILT)

ifneq ($(TARGET_BUILD_VARIANT),user)
include $(CLEAR_VARS)
LOCAL_MODULE       := adb.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/adb.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := adbenable
LOCAL_SRC_FILES     := adbenable.sh
LOCAL_MODULE_SUFFIX := .sh
LOCAL_MODULE_CLASS  := EXECUTABLES
include $(BUILD_PREBUILT)
else
include $(CLEAR_VARS)
LOCAL_MODULE       := adb.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/empty.txt
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init/hw
include $(BUILD_PREBUILT)
endif
