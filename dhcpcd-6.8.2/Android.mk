LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := dhcpcd-run-hooks
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := dhcpcd-run-hooks
# This will install the file in /system/etc/dhcpcd-6.8.2
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/dhcpcd-6.8.2

include $(BUILD_PREBUILT)
