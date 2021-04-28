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

PRODUCT_CHARACTERISTICS := tablet,noearpiece
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge large normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi

# HW composer
PRODUCT_PACKAGES += \
    libion \
    gralloc.exynos5 \
    libfimg     

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=220 \
    lockscreen.rot_override=true

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_PACKAGES += \
    bootanimation.zip

# init.d Enable
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/init_d.rc:system/etc/init/init_d.rc \
    $(LOCAL_PATH)/Shell/80speninputdetection:system/etc/init.d/80speninputdetection \
    $(LOCAL_PATH)/Shell/00swapon:system/etc/init.d/00swapon \
    $(LOCAL_PATH)/Shell/01swappiness:system/etc/init.d/01swappiness \
    $(LOCAL_PATH)/Shell/50ForceDoze:system/etc/init.d/50ForceDoze \

# Audio ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
PRODUCT_PACKAGES += \
    audio.primary.universal5420 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    tinymix \
    libFraunhoferAAC

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    ro.config.vc_call_vol_steps=50 \
    ro.config.media_vol_steps=50 \
    ro.config.ring_vol_steps=50 \
    ro.config.alarm_vol_steps=50 \
    ro.config.notify_vol_steps=50 \
    ro.config.bt_sco_vol_steps=15 \
    audio_hal.disable_two_mic=true \
    audio_hal.force_voice_config=narrow \
    persist.bluetooth.disableabsvol=false

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# AptXHD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptXHD=true

# Camera
PRODUCT_PACKAGES += \
    camera.universal5420 \
    libhwjpeg \

# Substratum Themes
#PRODUCT_PACKAGES += \
    ThemeInterfacer \
    projekt.substratum.theme.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    bash

PRODUCT_PACKAGES += \
    AdvancedDisplay

#ImageMagick
PRODUCT_PACKAGES += \
    Magick_coders \
    Magick_filters \
    Magick++ \
    MagickCore \
    MagickWand \

# Samsung Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# GPS # SHIM LIBS
PRODUCT_PACKAGES += \
    libshim_gpsd

# __popcountsi2 method, for the r7p0 egl blob
PRODUCT_PACKAGES += \
    libpopcountsi2

# IDC Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_e-pen.kl:system/usr/keylayout/sec_e-pen.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Utilities
PRODUCT_PACKAGES += \
    remount \
    optimizedb \
    busybox

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5420

# Lights
PRODUCT_PACKAGES += \
    lights.universal5420

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore setup
PRODUCT_PACKAGES += \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov

# Network tools
PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# OMX Video codecs
PRODUCT_PACKAGES += \
    libOMX.Exynos.WMV.Decoder \
    libOMX.Exynos.MPEG2.Decoder

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.gamepad.xml:system/etc/permissions/android.hardware.gamepad.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.picture_in_picture.xml:system/etc/permissions/android.software.picture_in_picture.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.connectionservice.xml:system/etc/permissions/android.software.connectionservice.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Bluetooth
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Power
PRODUCT_PACKAGES += \
    power.universal5420

# Persistent partition hack
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/backuptool.sh:install/bin/backuptool.sh

# Init Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.samsung.rc \
    init.universal5420.rc \
    init.universal5420.usb.rc \
    init.universal5420.wifi.rc \
    ueventd.universal5420.rc \
    init.baseband.rc

# Gestures
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

# Radio ---------with xmm6262------------------
PRODUCT_PACKAGES += \
    libril \
    librilutils \
    rild \
    libxml2 \
    libprotobuf-cpp-full \
    libsecnativefeature \
    modemloader

#---------------------6262---------------
# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap


PRODUCT_PACKAGES += \
    SamsungServiceMode

# Misc libraries libstlport
PRODUCT_PACKAGES += \
    libstlport

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    dhcpcd-6.8.2 \
    dhcpcd-run-hooks \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    macloader \
    libnetcmdiface \
    wifiloader

# DHCPCD   
DHCPCD_USE_SCRIPT := yes
DHCPCD_USE_IPV6 := yes

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dhcpcd-6.8.2/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd-6.8.2/dhcpcd-hooks/20-dns.conf \
    $(LOCAL_PATH)/dhcpcd-6.8.2/dhcpcd-hooks/95-configured:system/etc/dhcpcd-6.8.2/dhcpcd-hooks/95-configured

#olsrd-0.9.6.2
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/olsrd-0.9.6.2/bin/olsrd:system/bin/olsrd \
    $(LOCAL_PATH)/olsrd-0.9.6.2/bin/sgw_policy_routing_setup.sh:system/bin/sgw_policy_routing_setup.sh \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_watchdog.so.0.1:system/lib/olsrd_watchdog.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_pgraph.so.1.1:system/lib/olsrd_pgraph.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_jsoninfo.so.1.1:system/lib/olsrd_jsoninfo.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_mini.so.0.1:system/lib/olsrd_mini.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_secure.so.0.6:system/lib/olsrd_secure.so.0.6 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_p2pd.so.0.1.0:system/lib/olsrd_p2pd.so.0.1.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_httpinfo.so.0.1:system/lib/olsrd_httpinfo.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dyn_gw_plain.so.0.4:system/lib/olsrd_dyn_gw_plain.so.0.4 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_sgwdynspeed.so.1.0.0:system/lib/olsrd_sgwdynspeed.so.1.0.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_nameservice.so.0.4:system/lib/olsrd_nameservice.so.0.4 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dyn_gw.so.0.5:system/lib/olsrd_dyn_gw.so.0.5 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_netjson.so.1.1:system/lib/olsrd_netjson.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_txtinfo.so.1.1:system/lib/olsrd_txtinfo.so.1.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_dot_draw.so.0.3:system/lib/olsrd_dot_draw.so.0.3 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_arprefresh.so.0.1:system/lib/olsrd_arprefresh.so.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_bmf.so.1.7.0:system/lib/olsrd_bmf.so.1.7.0 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/lib/olsrd_mdns.so.1.0.1:system/lib/olsrd_mdns.so.1.0.1 \
    $(LOCAL_PATH)/olsrd-0.9.6.2/etc/wifi/olsrd.conf:system/etc/wifi/olsrd.conf \
    $(LOCAL_PATH)/olsrd-0.9.6.2/etc/wifi/olsrd.sgw.speed.conf:system/etc/wifi/olsrd.sgw.speed.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Radio
ADDITIONAL_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    telephony.lteOnCdmaDevice=0 \
    ro.telephony.default_network=0 \
    rild.libpath=/system/lib/libsec-ril.so \
    ro.data.large_tcp_window_size=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10

# adb
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1 \
    ro.debuggable=1 \
    ro.debug_level=0x4948

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# limit dex2oat threads to improve thermals
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=4 \
    dalvik.vm.image-dex2oat-threads=4

# Dex2oat optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=true \
    pm.dexopt.bg-dexopt=speed-profile

# Enable mock location
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.allow.mock.location=1

# Enable multi-window by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Hwc - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.winupdate=1 \
    debug.hwc.otf=1

# Adaptive backlight
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc

# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Dex2oat optimizations
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.fw.dex2oat_thread_count=4

# GPU producer to CPU consumer not supported
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sapa.jack.master=alsa \
    ro.hdcp2.rx=tz

# Open GL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# Randomly from stock
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sec.fle.encryption=true \
    ro.secwvk=220

# Enable SDCard fs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Samsung Specific Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.official.release=true \
    ro.chipname=exynos5420

# New grid design Recents UI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.recents.grid=true

$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)
# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/v1a3g/v1a3g-vendor.mk)
# Call Prebuilding Apps packages
$(call inherit-product-if-exists, vendor/samsung/prebuilding_apps/prebuilding_apps.mk)
# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5420/exynos5420.mk)
# call dalvik heap and hwui config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
####################################################################################################

#DolBy and Viper
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/sound:system/bin/sound \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/aplay:system/bin/aplay \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/alsa_aplay:system/bin/alsa_aplay \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/alsa_amixer:system/bin/alsa_amixer \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/sound8x60:system/bin/sound8x60 \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/spkamp:system/bin/spkamp \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/snd8k:system/bin/snd8k \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/alsa_ctl:system/bin/alsa_ctl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/asound:system/bin/asound \
     $(LOCAL_PATH)/Dolby-ViperFx/system/bin/snd:system/bin/snd \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.privateapis_impl.jar:system/framework/com.sonyericsson.privateapis_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.media.infinite.extension_1.jar:system/framework/com.sonyericsson.media.infinite.extension_1.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.video.jar:system/framework/com.sonyericsson.video.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.illumination.jar:system/framework/com.sonyericsson.illumination.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.album.jar:system/framework/com.sonymobile.album.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.faceeditor.jar:system/framework/com.sonymobile.faceeditor.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.system.jar:system/framework/com.sonyericsson.system.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.media.dashboard.extension.jar:system/framework/com.sonymobile.media.dashboard.extension.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.musicslideshow.jar:system/framework/com.sonymobile.musicslideshow.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.photoeditor.jar:system/framework/com.sonymobile.photoeditor.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.video.settings.jar:system/framework/com.sonyericsson.video.settings.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.covermode.jar:system/framework/com.sonymobile.covermode.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.uxp.jar:system/framework/com.sonyericsson.uxp.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.appextensions.jar:system/framework/com.sonyericsson.appextensions.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.photoanalyzer.jar:system/framework/com.sonymobile.photoanalyzer.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.music.jar:system/framework/com.sonyericsson.music.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.mediacontent.jar:system/framework/com.sonymobile.mediacontent.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.settings.illumination.jar:system/framework/com.sonymobile.settings.illumination.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.media_impl.jar:system/framework/com.sonymobile.media_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.colorextraction_impl.jar:system/framework/com.sonyericsson.colorextraction_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/sonyaudioeffect.jar:system/framework/sonyaudioeffect.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sony.device.jar:system/framework/com.sony.device.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.home.resourceprovider.jar:system/framework/com.sonymobile.home.resourceprovider.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonymobile.photoanalyzer_impl.jar:system/framework/com.sonymobile.photoanalyzer_impl.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.musicvisualizer.jar:system/framework/com.sonyericsson.musicvisualizer.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.uxpres.jar:system/framework/com.sonyericsson.uxpres.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/framework/com.sonyericsson.video.player.service.jar:system/framework/com.sonyericsson.video.player.service.jar \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_gec.bin:system/etc/image_gec.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats.bin:system/etc/image_ibeats.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_htc_earbud_2vol.bin:system/etc/image_htc_earbud_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/be2_album01:system/etc/be2_album01 \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/be2_album_mapping:system/etc/be2_album_mapping \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/be2_album:system/etc/be2_album \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_solo.bin:system/etc/image_ibeats_solo.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_v2.bin:system/etc/image_ibeats_v2.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_gec_bt.bin:system/etc/image_gec_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_solo_2vol.bin:system/etc/image_ibeats_solo_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_htc_midtier_2vol.bin:system/etc/image_htc_midtier_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_solo_v2.bin:system/etc/image_ibeats_solo_v2.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_v2_2vol.bin:system/etc/image_ibeats_v2_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/audio_only_image.png:system/etc/audio_only_image.png \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_htc_earbud.bin:system/etc/image_htc_earbud.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/be_movie_spc:system/etc/be_movie_spc \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_beats_speaker.bin:system/etc/image_beats_speaker.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_beats_wireless_bt.bin:system/etc/image_beats_wireless_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_2vol.bin:system/etc/image_ibeats_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_gec_2vol.bin:system/etc/image_gec_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/dsx_param_file.bin:system/etc/dsx_param_file.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_ibeats_solo_v2_2vol.bin:system/etc/image_ibeats_solo_v2_2vol.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_htc_midtier.bin:system/etc/image_htc_midtier.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/be2_album02:system/etc/be2_album02 \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/image_beatbox_bt.bin:system/etc/image_beatbox_bt.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libvoAudioFR.so:system/lib/libvoAudioFR.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libaudcal.so:system/lib/libaudcal.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libaudio_init.so:system/lib/libaudio_init.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libasound.so:system/lib/libasound.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libdlbdapstorage.so:system/lib/libdlbdapstorage.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libsoundhoundaudio.so:system/lib/libsoundhoundaudio.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/libAudioTrimmer.so:system/lib/libAudioTrimmer.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/priv-app/AsUI/AsUI.apk:system/priv-app/AsUI/AsUI.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/priv-app/As/As.apk:system/priv-app/As/As.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/priv-app/SemcMusic/SemcMusic.apk:system/priv-app/SemcMusic/SemcMusic.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/app/HeadphoneSelection/HeadphoneSelection.apk:system/app/HeadphoneSelection/HeadphoneSelection.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/app/YouTubeKaraokePlugin/YouTubeKaraokePlugin.apk:system/app/YouTubeKaraokePlugin/YouTubeKaraokePlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/app/WikipediaPlugin/WikipediaPlugin.apk:system/app/WikipediaPlugin/WikipediaPlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/app/GoogleLyricsPlugin/GoogleLyricsPlugin.apk:system/app/GoogleLyricsPlugin/GoogleLyricsPlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/app/YouTubePlugin/YouTubePlugin.apk:system/app/YouTubePlugin/YouTubePlugin.apk \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats_l.preset:system/etc/tfa/playbackbeats_l.preset \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats_l.eq:system/etc/tfa/playbackbeats_l.eq \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats.eq:system/etc/tfa/playbackbeats.eq \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats_l.config:system/etc/tfa/playbackbeats_l.config \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats.preset:system/etc/tfa/playbackbeats.preset \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/tfa/playbackbeats.config:system/etc/tfa/playbackbeats.config \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/dolby/ds-default.xml:system/etc/dolby/ds-default.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.photoanalyzer.xml:system/etc/permissions/com.sonymobile.photoanalyzer.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.media.xml:system/etc/permissions/com.sonymobile.media.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.trackid.xml:system/etc/permissions/com.sonymobile.trackid.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.album.xml:system/etc/permissions/com.sonymobile.album.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.system.xml:system/etc/permissions/com.sonyericsson.system.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml:system/etc/permissions/com.sonyericsson.media.infinite.extension_1.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.colorextraction.xml:system/etc/permissions/com.sonyericsson.colorextraction.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.video.player.service.xml:system/etc/permissions/com.sonyericsson.video.player.service.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.video.settings.xml:system/etc/permissions/com.sonyericsson.video.settings.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.illumination.xml:system/etc/permissions/com.sonyericsson.illumination.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.faceeditor.xml:system/etc/permissions/com.sonymobile.faceeditor.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.photoeditor.xml:system/etc/permissions/com.sonymobile.photoeditor.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.appextensions.xml:system/etc/permissions/com.sonyericsson.appextensions.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.media.dashboard.extension.xml:system/etc/permissions/com.sonymobile.media.dashboard.extension.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.privateapis.xml:system/etc/permissions/com.sonyericsson.privateapis.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sony.device.xml:system/etc/permissions/com.sony.device.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonyericsson.uxpres.xml:system/etc/permissions/com.sonyericsson.uxpres.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.mediacontent.xml:system/etc/permissions/com.sonymobile.mediacontent.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.settings.illumination.xml:system/etc/permissions/com.sonymobile.settings.illumination.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/permissions/com.sonymobile.home.resourceprovider.xml:system/etc/permissions/com.sonymobile.home.resourceprovider.xml \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_SubSemCam.tbl:system/etc/sony_effect/znr_param_48k_SubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_MainSubSemCam.tbl:system/etc/sony_effect/znr_param_44k_MainSubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_MainSubSoiCam.tbl:system/etc/sony_effect/znr_param_48k_MainSubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_SubSemCam.tbl:system/etc/sony_effect/znr_param_44k_SubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/xloud_param_arm.bin:system/etc/sony_effect/xloud_param_arm.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_MainCam.tbl:system/etc/sony_effect/znr_param_44k_MainCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_SubSoiCam.tbl:system/etc/sony_effect/znr_param_48k_SubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/sforce_param_qdsp.bin:system/etc/sony_effect/sforce_param_qdsp.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_NoCam.tbl:system/etc/sony_effect/znr_param_48k_NoCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_MainCam.tbl:system/etc/sony_effect/znr_param_48k_MainCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_MainSubSoiCam.tbl:system/etc/sony_effect/znr_param_44k_MainSubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/clearphase_sp_param.bin:system/etc/sony_effect/clearphase_sp_param.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/effect_params.data:system/etc/sony_effect/effect_params.data \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/sforce_param_arm.bin:system/etc/sony_effect/sforce_param_arm.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_48k_MainSubSemCam.tbl:system/etc/sony_effect/znr_param_48k_MainSubSemCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_NoCam.tbl:system/etc/sony_effect/znr_param_44k_NoCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/xloud_param_qdsp.bin:system/etc/sony_effect/xloud_param_qdsp.bin \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/sony_effect/znr_param_44k_SubSoiCam.tbl:system/etc/sony_effect/znr_param_44k_SubSoiCam.tbl \
     $(LOCAL_PATH)/Dolby-ViperFx/system/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libvolumelistener.so:system/lib/soundfx/libvolumelistener.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libqcomvisualizer.so:system/lib/soundfx/libqcomvisualizer.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libvptwrapper.so:system/lib/soundfx/libvptwrapper.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libsrsprocessing.so:system/lib/soundfx/libsrsprocessing.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libswdap-mod.so:system/lib/soundfx/libswdap-mod.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libsrscore.so:system/lib/soundfx/libsrscore.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libibanezseven-stereo+.so:system/lib/soundfx/libibanezseven-stereo+.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libibanezsevendseehx.so:system/lib/soundfx/libibanezsevendseehx.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libsonypostprocbundle.so:system/lib/soundfx/libsonypostprocbundle.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libsonysweffect.so:system/lib/soundfx/libsonysweffect.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libqcompostprocbundle.so:system/lib/soundfx/libqcompostprocbundle.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libqcomvoiceprocessing.so:system/lib/soundfx/libqcomvoiceprocessing.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/lib/soundfx/libibanezseven-hi-res.so:system/lib/soundfx/libibanezseven-hi-res.so \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
     $(LOCAL_PATH)/Dolby-ViperFx/system/usr/share/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf 
     
