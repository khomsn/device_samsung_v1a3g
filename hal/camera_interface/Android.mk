# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq ($(TARGET_CAMERAHAL_VARIANT),v1axx)
LOCAL_PATH := $(call my-dir)

#################
# libexynoscamera.so

ifeq ($(TARGET_CAMERALIB_PROVIDED),false)
include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libbinder \
    libdl  \
    libhardware \
    liblog \
    libcamera_client \
    libgui \
    libhidltransport \
    libsensor \
    libutils \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0 \

LOCAL_STATIC_LIBRARIES := \
    libarect \
    libbase \
    libminui

LOCAL_CFLAGS += -DGAIA_FW_BETA

LOCAL_C_INCLUDES += \
    system/media/camera/include \
    framworks/av/include/camera \
    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_SRC_FILES:= \
    ExynosCameraHWImpl.cpp
    
LOCAL_HEADER_LIBRARIES += \
    libnativebase_headers

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libexynoscamera
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
endif
#################
# camera.exynos5420.so

include $(CLEAR_VARS)

# HAL module implemenation stored in
# hw/<COPYPIX_HARDWARE_MODULE_ID>.<ro.product.board>.so

LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_C_INCLUDES += \
    system/media/camera/include \
    framworks/av/include/camera \
    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_SRC_FILES := \
    ExynosCameraHWInterface.cpp

LOCAL_SHARED_LIBRARIES := \
    libexynoscamera \
    libcutils \
    libbinder \
    libhardware \
    liblog \
    libcamera_client \
    libgui \
    libhidltransport \
    libsensor \
    libutils \
    android.hidl.token@1.0-utils \
    libdl \
    android.hardware.graphics.bufferqueue@1.0 \
    libsecnativefeature \

LOCAL_STATIC_LIBRARIES := \
    libarect \
    libbase \
    libminui

LOCAL_HEADER_LIBRARIES := libnativebase_headers

LOCAL_CFLAGS += -DGAIA_FW_BETA

ifneq ($(BOARD_CAMERA_FRONT_ROTATION),)
LOCAL_CFLAGS += -DFRONT_ROTATION=$(BOARD_CAMERA_FRONT_ROTATION)
else
LOCAL_CFLAGS += -DFRONT_ROTATION=0
endif

ifneq ($(BOARD_CAMERA_BACK_ROTATION),)
LOCAL_CFLAGS += -DBACK_ROTATION=$(BOARD_CAMERA_BACK_ROTATION)
else
LOCAL_CFLAGS += -DBACK_ROTATION=0
endif

LOCAL_MODULE := camera.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_VENDOR_MODULE := true

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
