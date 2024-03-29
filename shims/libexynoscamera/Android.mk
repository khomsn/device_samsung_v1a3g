# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    libexynoscamera.cpp

LOCAL_SHARED_LIBRARIES:= libutils libcutils libbinder liblog libcamera_client libhardware libion
LOCAL_SHARED_LIBRARIES += libcsc libexynosutils libhwjpeg libexynosv4l2 libexynosgscaler libion_exynos
LOCAL_SHARED_LIBRARIES += libexpat libpower

LOCAL_MODULE := libexynoscamera_shim
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_VENDOR_MODULE := true

LOCAL_CFLAGS += -Wno-unused-parameter

LOCAL_C_INCLUDES += \
	$(TOP)/hardware/samsung_slsi/exynos/include \
	$(TOP)/hardware/samsung_slsi/$(TARGET_SOC)/include \
	$(TOP)/hardware/samsung_slsi/$(TARGET_SOC)/libcamera \
	$(TOP)/hardware/samsung_slsi/$(TARGET_BOARD_PLATFORM)/include \
	$(TOP)/hardware/samsung_slsi/$(TARGET_BOARD_PLATFORM)/libcamera \
	$(TOP)/hardware/samsung_slsi/exynos/include \
	$(TOP)/bionic

include $(BUILD_SHARED_LIBRARY)
