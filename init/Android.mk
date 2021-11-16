LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := charger.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := charger.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := cpboot-daemon.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := cpboot-daemon.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := cs_service.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := cs_service.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := gpsd.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := gpsd.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init_d.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init_d.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.fbind.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.fbind.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.v4afx.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.v4afx.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := mobicore.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := mobicore.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := modemloader.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := modemloader.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := rild.legacy.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := rild.legacy.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := selinux.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := selinux.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := spen.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := spen.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := sswap.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := sswap.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := watchdogd.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := watchdogd.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := wifiloader.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := wifiloader.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := wpa_supplicant.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := wpa_supplicant.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

