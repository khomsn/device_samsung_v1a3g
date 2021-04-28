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

PRODUCT_CHARACTERISTICS := tablet

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/v1a3g/overlay 

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge large normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
#PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi

# HW composer
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.renderscript@1.0-impl \
    gralloc.exynos5 \
    libhwc2on1adapter \
    memtrack.exynos5 \
    hwcomposer.exynos5

PRODUCT_PACKAGES += \
    libgutils

PRODUCT_PACKAGES += \
    libtinyxml

PRODUCT_PACKAGES += \
    libfimg

# seccomp_policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# APN Definitions - override incomplete/broken lineageos version with Samsung version
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/telephony/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/telephony/spn-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/spn-conf.xml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.2-service.clearkey

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    keystore.exynos5

# Cas
PRODUCT_PACKAGES += \
    android.hardware.cas@1.1-service

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@5.0 \
    android.hardware.audio.effect@5.0-impl

#common
PRODUCT_PACKAGES += \
    audio.primary.universal5420 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinycompress \
    libseirenhw \
    libFraunhoferAAC \
    libFLAC \
    libFLAC-config

# Audio ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/surround_sound_configuration_5_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_configuration_5_0.xml \

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Healthd
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    camera.device@1.0-impl-legacy \
    libhwjpeg \
    libsecnativefeature \
    libion_exynos

PRODUCT_PACKAGES += \
    libexynoscamera_shim

PRODUCT_PACKAGES += \
    camera.universal5420 

PRODUCT_PACKAGES += \
    libexynoscamera

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-impl \
    android.hardware.configstore@1.1-service

# LPM
PRODUCT_PACKAGES += \
    libsuspend
    
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0


# Substratum Themes
#PRODUCT_PACKAGES += \
    ThemeInterfacer \
    projekt.substratum.theme.xml

# File$(TARGET_COPY_OUT_SYSTEM) management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    bash

PRODUCT_PACKAGES += \
    AdvancedDisplay

#ImageMagick
#PRODUCT_PACKAGES += \
    Magick_coders \
    Magick_filters \
    Magick++ \
    MagickCore \
    MagickWand \

# Samsung Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.samsung-exynos

# WeatherProviders
#PRODUCT_PACKAGES += \
    OpenWeatherMapWeatherProvider \
    YahooWeatherProvider \
    WundergroundWeatherProvider

# GPS # SHIM LIBS
#PRODUCT_PACKAGES += \
    libshim_gpsd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/gps.cfg \
    $(LOCAL_PATH)/configs/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gps.xml

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
    libdmitry

# __popcountsi2 method, for the r7p0 egl blob
PRODUCT_PACKAGES += \
    libpopcountsi2

# IDC Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/sec_e-pen.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/Synaptics_HID_TouchPad.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_e-pen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_e-pen.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/Vendor_04e8_Product_7021.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_04e8_Product_7021.kl \

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Utilities
PRODUCT_PACKAGES += \
    remount \
    optimizedb \

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.universal5420

PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service.samsung

# Lights
#PRODUCT_PACKAGES += \
    lights.universal5420

PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung

# Media profile
#PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_profiles.xml

# USB
#PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore setup
PRODUCT_PACKAGES += \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov

# Network tools
#PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# OMX Video codecs
PRODUCT_PACKAGES += \
    libcsc \
    libOMX.Exynos.WMV.Decoder \
    libOMX.Exynos.MPEG2.Decoder

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.gamepad.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.gamepad.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.picture_in_picture.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.picture_in_picture.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.connectionservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.connectionservice.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/tablet_core_hardware.xml \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \

# Bluetooth
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/bluetooth/bt_vendor.conf

PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# MobiCore
PRODUCT_PACKAGES += \
    mcDriverDaemon

# Power
#PRODUCT_PACKAGES += \
    power.universal5420

PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.exynos \
    android.hardware.power.stats@1.0-service.mock

# Persistent partition hack
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/backuptool.sh:install/bin/backuptool.sh

# System properties
-include $(LOCAL_PATH)/$(TARGET_COPY_OUT_SYSTEM)_prop.mk

# Init Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.universal5420.rc \
    init.exynos5onearlyboot.rc \
    init.exynos5onboot.rc \
    init.exynos5oncharger.rc \
    init.exynos5onearlyinit.rc \
    init.exynos5onfs.rc \
    init.exynos5oninit.rc \
    init.exynos5onlatefs.rc \
    init.exynos5onpostfs.rc \
    init.exynos5onpostfsdata.rc \
    init.exynos5onproperty.rc \
    ueventd.universal5420.rc

# Init Services
PRODUCT_PACKAGES += \
    gpsd.rc \
    mobicore.rc \
    init_d.rc \
    spen-d.rc \
    cpboot-daemon.rc \
    sswap.rc \
    modemloader.rc \
    watchdogd.rc \
    charger.rc \
    wpa_supplicant.rc \
    cs_service.rc

PRODUCT_PACKAGES += \
    rild.legacy.rc \

# first_stage_mount
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab_fst.universal5420:$(TARGET_COPY_OUT_RAMDISK)/fstab.universal5420 \
    $(LOCAL_PATH)/rootdir/fstab_fst.universal5420:$(TARGET_COPY_OUT_VENDOR)/fstab.universal5420

# Gestures
#PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

# Radio ---------with xmm6262------------------
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \
    android.hardware.radio.deprecated@1.0 \
    libxml2 \
    libprotobuf-cpp-full \
    rild \
    libril \
    Stk \
    modemloader \

PRODUCT_PACKAGES += \
    libsecril_atomic
    
#---------------------6262---------------
# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.samsung5420 \
    android.hardware.sensors@1.0-service.samsung5420 \
    sensors.exynos5

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/_hals.conf
    
# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.smartselection.bundle1

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl 

# Offmode charger
PRODUCT_PACKAGES += \
    charger_res_images \
    lineage_charger_res_images

#PRODUCT_PACKAGES += \
    SamsungServiceMode

# Misc libraries libstlport
#PRODUCT_PACKAGES += \
    libstlport

# Wifi
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd_default.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf

#PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd_default.conf \
    dhcpcd-6.8.2 \
    dhcpcd-run-hooks \
    libwpa_client \
    macloader \

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service.legacy \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    libnetcmdiface \
    wifiloader \


# DHCPCD   
#DHCPCD_USE_SCRIPT := yes
#DHCPCD_USE_IPV6 := yes

#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dhcpcd-6.8.2/dhcpcd-hooks/20-dns.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/dhcpcd-6.8.2/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/dhcpcd-6.8.2/dhcpcd-hooks/95-configured:$(TARGET_COPY_OUT_SYSTEM)/etc/dhcpcd-6.8.2/dhcpcd-hooks/95-configured

#olsrd-0.9.6.2
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/olsrd-0.9.6.2/bin/olsrd:$(TARGET_COPY_OUT_SYSTEM)/bin/olsrd \
    $(LOCAL_PATH)/olsrd-0.9.6.2/bin/sgw_policy_routing_setup.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/sgw_policy_routing_setup.sh \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_watchdog.so.0.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_watchdog.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_pgraph.so.1.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_pgraph.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_jsoninfo.so.1.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_jsoninfo.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_mini.so.0.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_mini.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_secure.so.0.6:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_secure.so.0.6 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_p2pd.so.0.1.0:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_p2pd.so.0.1.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_httpinfo.so.0.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_httpinfo.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dyn_gw_plain.so.0.4:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_dyn_gw_plain.so.0.4 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_sgwdynspeed.so.1.0.0:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_sgwdynspeed.so.1.0.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_nameservice.so.0.4:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_nameservice.so.0.4 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dyn_gw.so.0.5:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_dyn_gw.so.0.5 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_netjson.so.1.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_netjson.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_txtinfo.so.1.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_txtinfo.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dot_draw.so.0.3:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_dot_draw.so.0.3 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_arprefresh.so.0.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_arprefresh.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_bmf.so.1.7.0:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_bmf.so.1.7.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_mdns.so.1.0.1:$(TARGET_COPY_OUT_SYSTEM)/lib/olsrd_mdns.so.1.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/etc/wifi/olsrd.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/wifi/olsrd.conf \
    $(LOCAL_PATH)/olsrd-0.9.6.2/etc/wifi/olsrd.sgw.speed.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/wifi/olsrd.sgw.speed.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/v1a3g/v1a3g-vendor.mk)
# Call Prebuilding Apps packages
$(call inherit-product-if-exists, vendor/samsung/prebuilding_apps/prebuilding_apps.mk)
# call Samsung LSI board support package
$(call inherit-product-if-exists, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product-if-exists, hardware/samsung_slsi/exynos5420/exynos5420.mk)
$(call inherit-product-if-exists, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product-if-exists, hardware/samsung_slsi-cm/exynos5420/exynos5420.mk)

# call dalvik heap and hwui config
$(call inherit-product-if-exists, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
####################################################################################################

#DolBy and Viper
#PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/sound:$(TARGET_COPY_OUT_SYSTEM)/bin/sound \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/aplay:$(TARGET_COPY_OUT_SYSTEM)/bin/aplay \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_aplay:$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_aplay \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_amixer:$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_amixer \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/sound8x60:$(TARGET_COPY_OUT_SYSTEM)/bin/sound8x60 \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/spkamp:$(TARGET_COPY_OUT_SYSTEM)/bin/spkamp \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/snd8k:$(TARGET_COPY_OUT_SYSTEM)/bin/snd8k \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_ctl:$(TARGET_COPY_OUT_SYSTEM)/bin/alsa_ctl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/asound:$(TARGET_COPY_OUT_SYSTEM)/bin/asound \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/bin/snd:$(TARGET_COPY_OUT_SYSTEM)/bin/snd \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.privateapis_impl.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.privateapis_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.media.infinite.extension_1.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.media.infinite.extension_1.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.illumination.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.illumination.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.album.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.album.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.faceeditor.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.faceeditor.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.$(TARGET_COPY_OUT_SYSTEM).jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.$(TARGET_COPY_OUT_SYSTEM).jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.media.dashboard.extension.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.media.dashboard.extension.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.musicslideshow.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.musicslideshow.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoeditor.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoeditor.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.settings.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.settings.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.covermode.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.covermode.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.uxp.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.uxp.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.appextensions.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.appextensions.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoanalyzer.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoanalyzer.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.music.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.music.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.mediacontent.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.mediacontent.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.settings.illumination.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.settings.illumination.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.media_impl.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.media_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.colorextraction_impl.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.colorextraction_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/sonyaudioeffect.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/sonyaudioeffect.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sony.device.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sony.device.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.home.resourceprovider.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.home.resourceprovider.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoanalyzer_impl.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonymobile.photoanalyzer_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.musicvisualizer.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.musicvisualizer.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.uxpres.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.uxpres.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.player.service.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.sonyericsson.video.player.service.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_earbud_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_earbud_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album01:$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album01 \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album_mapping:$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album_mapping \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album:$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_v2.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_v2.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec_bt.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_midtier_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_midtier_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_v2.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_v2.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_v2_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_v2_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/audio_only_image.png:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_only_image.png \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_earbud.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_earbud.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/be_movie_spc:$(TARGET_COPY_OUT_SYSTEM)/etc/be_movie_spc \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_beats_speaker.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_beats_speaker.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_beats_wireless_bt.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_beats_wireless_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_gec_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/dsx_param_file.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/dsx_param_file.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_v2_2vol.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_ibeats_solo_v2_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_midtier.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_htc_midtier.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album02:$(TARGET_COPY_OUT_SYSTEM)/etc/be2_album02 \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/image_beatbox_bt.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/image_beatbox_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libvoAudioFR.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libvoAudioFR.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libaudioalsa.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libaudioalsa.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libacdbmapper.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libacdbmapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libaudcal.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libaudcal.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libaudio_init.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libaudio_init.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libasound.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libasound.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libdlbdapstorage.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libdlbdapstorage.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libbeatscorehtc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libbeatscorehtc.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libsoundhoundaudio.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libsoundhoundaudio.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/libAudioTrimmer.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libAudioTrimmer.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/priv-app/AsUI/AsUI.apk:$(TARGET_COPY_OUT_SYSTEM)/priv-app/AsUI/AsUI.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/priv-app/As/As.apk:$(TARGET_COPY_OUT_SYSTEM)/priv-app/As/As.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/priv-app/SemcMusic/SemcMusic.apk:$(TARGET_COPY_OUT_SYSTEM)/priv-app/SemcMusic/SemcMusic.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/app/HeadphoneSelection/HeadphoneSelection.apk:$(TARGET_COPY_OUT_SYSTEM)/app/HeadphoneSelection/HeadphoneSelection.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/app/YouTubeKaraokePlugin/YouTubeKaraokePlugin.apk:$(TARGET_COPY_OUT_SYSTEM)/app/YouTubeKaraokePlugin/YouTubeKaraokePlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/app/WikipediaPlugin/WikipediaPlugin.apk:$(TARGET_COPY_OUT_SYSTEM)/app/WikipediaPlugin/WikipediaPlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/app/GoogleLyricsPlugin/GoogleLyricsPlugin.apk:$(TARGET_COPY_OUT_SYSTEM)/app/GoogleLyricsPlugin/GoogleLyricsPlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/app/YouTubePlugin/YouTubePlugin.apk:$(TARGET_COPY_OUT_SYSTEM)/app/YouTubePlugin/YouTubePlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.preset:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.preset \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.eq:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.eq \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.eq:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.eq \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.config:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats_l.config \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.preset:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.preset \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.config:$(TARGET_COPY_OUT_SYSTEM)/etc/tfa/playbackbeats.config \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/dolby/ds-default.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/dolby/ds-default.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.photoanalyzer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.photoanalyzer.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.media.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.media.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.trackid.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.trackid.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.album.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.album.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.$(TARGET_COPY_OUT_SYSTEM).xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.$(TARGET_COPY_OUT_SYSTEM).xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.colorextraction.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.colorextraction.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.video.player.service.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.video.player.service.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.video.settings.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.video.settings.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.illumination.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.illumination.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.faceeditor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.faceeditor.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.photoeditor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.photoeditor.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.appextensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.appextensions.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.media.dashboard.extension.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.media.dashboard.extension.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.privateapis.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.privateapis.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sony.device.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sony.device.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.uxpres.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.uxpres.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.mediacontent.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.mediacontent.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.settings.illumination.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.settings.illumination.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.home.resourceprovider.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.home.resourceprovider.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_global.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_global.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_movie.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_movie.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_bypass.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_bypass.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_51.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_51.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_geq10.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srs_geq10.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_voice.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_voice.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_music.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/soundimage/srsfx_trumedia_music.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_SubSemCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_SubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainSubSemCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainSubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainSubSoiCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainSubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_SubSemCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_SubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/xloud_param_arm.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/xloud_param_arm.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_SubSoiCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_SubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/sforce_param_qdsp.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/sforce_param_qdsp.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_NoCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_NoCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainSubSoiCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_MainSubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/clearphase_sp_param.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/clearphase_sp_param.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/effect_params.data:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/effect_params.data \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/sforce_param_arm.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/sforce_param_arm.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainSubSemCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_48k_MainSubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_NoCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_NoCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/xloud_param_qdsp.bin:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/xloud_param_qdsp.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_SubSoiCam.tbl:$(TARGET_COPY_OUT_SYSTEM)/etc/sony_effect/znr_param_44k_SubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg:$(TARGET_COPY_OUT_SYSTEM)/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libznrwrapper.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libznrwrapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvolumelistener.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvolumelistener.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcomvisualizer.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcomvisualizer.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcvirt.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcvirt.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvptwrapper.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvptwrapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrsprocessing.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrsprocessing.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvpt51wrapper.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libvpt51wrapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrsfx.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrsfx.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libbeatsbass.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libbeatsbass.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libswdap-mod.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libswdap-mod.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcreverb.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcreverb.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrscorehtc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrscorehtc.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libbeatscorehtc.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libbeatscorehtc.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrscore.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrscore.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezseven-stereo+.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezseven-stereo+.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezsevendseehx.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezsevendseehx.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsonypostprocbundle.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsonypostprocbundle.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libxloudwrapper.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libxloudwrapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsonysweffect.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsonysweffect.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcompostprocbundle.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcompostprocbundle.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcomvoiceprocessing.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcomvoiceprocessing.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrstb.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libsrstb.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcbassboost.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libqcbassboost.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezseven-hi-res.so:$(TARGET_COPY_OUT_SYSTEM)/lib/soundfx/libibanezseven-hi-res.so \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/alsa.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/alsa.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/center_lfe.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/center_lfe.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround51.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround51.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dmix.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dmix.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/iec958.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/iec958.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/rear.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/rear.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround50.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround50.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/front.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/front.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/side.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/side.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround71.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround71.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/modem.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/modem.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/default.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/default.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround40.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround40.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround41.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/surround41.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dsnoop.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dsnoop.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dpl.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/pcm/dpl.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/cards/aliases.conf:$(TARGET_COPY_OUT_SYSTEM)/usr/share/alsa/cards/aliases.conf 
