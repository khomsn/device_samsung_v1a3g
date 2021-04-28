#
# Copyright (C) 2016 The CyanogenMod Project
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
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),v1a3g)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Create links for OpenCL files
$(shell mkdir -p  $(TARGET_OUT)/vendor/lib; \
	mkdir -p  $(TARGET_OUT)/vendor/lib/hw; \
    ln -sf /vendor/lib/egl/libGLES_mali.so $(TARGET_OUT)/vendor/lib/libOpenCL.so.1.1; \
    ln -sf /vendor/lib/egl/libGLES_mali.so $(TARGET_OUT)/vendor/lib/libOpenCL.so.1; \
    ln -sf /vendor/lib/egl/libGLES_mali.so $(TARGET_OUT)/vendor/lib/libOpenCL.so)

LOCAL_ADDITIONAL_DEPENDENCIES += busybox_symlinks
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -lt 24; echo $$?),0)
LOCAL_POST_INSTALL_CMD := \
	$(hide) mkdir -p $(TARGET_ROOT_OUT)/sbin && \
	ln -sf /sbin/busybox $(TARGET_ROOT_OUT)/sbin/sh
endif

endif
