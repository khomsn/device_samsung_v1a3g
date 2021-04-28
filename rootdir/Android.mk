LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := fstab.universal5420
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := fstab.universal5420
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.universal5420.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.universal5420.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onearlyboot.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onearlyboot.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onboot.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onboot.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5oncharger.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5oncharger.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onearlyinit.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onearlyinit.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onfs.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onfs.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5oninit.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5oninit.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onlatefs.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onlatefs.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onpostfs.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onpostfs.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onpostfsdata.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onpostfsdata.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.exynos5onproperty.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := init.exynos5onproperty.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := ueventd.universal5420.rc
LOCAL_MODULE_STEM       := ueventd.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := ueventd.universal5420.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)
