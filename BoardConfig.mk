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

LOCAL_PATH := device/samsung/v1a3g

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos5420
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a15

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := v1a3g,v1a3gxx
TARGET_BOOTLOADER_BOARD_NAME := universal5420
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Camera
BOARD_NEEDS_MEMORYHEAPION := true
BOARD_GLOBAL_CFLAGS += -DSAMSUNG_DVFS
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
BOARD_GLOBAL_CFLAGS += -DWIDEVINE_PLUGIN_PRE_NOTIFY_ERROR

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := lineageos_deathly_Khomsn_V1_v1a3g_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/v1a3g
#KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/gcc-linaro-7.2.1-2017.11-x86_64_arm-eabi/bin
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-eabi-UB-5.3/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
LZMA_RAMDISK_TARGETS := recovery
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_CUSTOM_BOOTIMG := true

# Charging mode
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := battery
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
BOARD_NO_CHARGER_LED := true
# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_NEON_BLITANTIH := true

# Graphics+SurfaceFlinger
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

# Mixer
BOARD_USE_BGRA_8888 := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Exynos display
BOARD_USES_VIRTUAL_DISPLAY := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# HDMI
BOARD_USES_GSC_VIDEO := true

# SCALER
BOARD_USES_SCALER := true

# Hardware
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# # Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
TARGET_OMX_LEGACY_RESCALING := true

# Modem 6262---------------------------------------------
BOARD_MODEM_TYPE := xmm6262
BOARD_PROVIDES_LIBRIL := true
# RIL java overwrite
BOARD_RIL_CLASS := ../../../device/samsung/v1a3g/ril
#--------------------------------------------------------

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2491416576
# 28403826688 - 16384 <encryption footer>
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28403810304
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Extended filesystem support
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_EXFAT_DRIVER := sdfat
TARGET_VFAT_DRIVER := sdfat

# Disable journaling on system.img to save space
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# Enable dex-preoptimization to speed up first boot sequence
# Lower filesize by limiting dex-preoptimization
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_ONLY := true

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal5420
#have no ref
BOARD_RECOVERY_SWIPE := true
# Fix too large recovery
TARGET_RECOVERY_DENSITY := hdpi

# WFD
BOARD_USES_WFD := true

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Audio
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true

# Audio HAL from hardware/samsung
TARGET_AUDIOHAL_VARIANT := samsung
# Advanced Low Power audio support
BOARD_USE_ALP_AUDIO := true

# Power HAL from hardware/samsung
TARGET_POWERHAL_VARIANT := samsung

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Allow to use baseline profile for AVC recording
TARGET_USE_AVC_BASELINE_PROFILE := true

# IR HAL from hardware/samsung
IR_HAL_SUFFIX := universal5420
# IR Blaster
IR_HAS_ONE_FREQ_RANGE := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"

# Force the screenshot path to CPU consumer
TARGET_FORCE_SCREENSHOT_CPU_PATH := true

# Samsung Gralloc
TARGET_SAMSUNG_GRALLOC_EXTERNAL_USECASES := true

# Webkit
ENABLE_WEBGL := true

# Audio blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# SELinux put absolute path only for sepolicy dir!!!
BOARD_SEPOLICY_DIRS += device/samsung/v1a3g/sepolicy
##BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

# Linker
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib/egl/libGLES_mali.so|libpopcountsi2.so
#############################################################################################################
