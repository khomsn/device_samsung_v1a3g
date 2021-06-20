#
# system.prop for v1a3g
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    ro.config.vc_call_vol_steps=50 \
    ro.config.media_vol_steps=50 \
    ro.config.ring_vol_steps=50 \
    ro.config.alarm_vol_steps=50 \
    ro.config.notify_vol_steps=50 \
    ro.config.bt_sco_vol_steps=15 \
    ro.config.system_vol_steps=50 \
    audio_hal.disable_two_mic=true \
    audio_hal.force_voice_config=narrow \
    af.fast_track_multiplier=1 \
    persist.bluetooth.disableabsvol=false

# AptXHD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bt.enableAptXHD=true

#PRODUCT_PROPERTY_OVERRIDES += \
	ro.bt.bdaddr_path="/efs/bluetooth/bt_addr"

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

#    
# Boot directly from charger mode
PRODUCT_PROPERTY_OVERRIDES += \
    ro.enable_boot_charger_mode=1

# ADB
# Enable ADB Debugging By Default & Disable USB Debugging Popup
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.adb.secure=0 \
    ro.secure=0

# adb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    ro.debuggable=1 \
    ro.debug_level=0x4948

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=1

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
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.allow.mock.location=1

# Enable multi-window by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Hwc - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.winupdate=1 \
    debug.hwc.otf=1

# Legacy stagefright media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Dex2oat optimizations
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
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

# Memory Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.trim_empty_percent=50 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.empty_app_percent=25

# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_treble=true
# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Burn-in protection
PRODUCT_PROPERTY_OVERRIDES += \
    ro.systemui.burn_in_protection=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# OpenGL
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false

# First API Level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=19

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=mdfpp

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.skip_dma_types=0,2 \
    debug.hwc.force_gpu=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=220 \
    lockscreen.rot_override=true

# Disable more Codec2.0 components
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0 \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0
    
# Configstore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3
# Widevine
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
