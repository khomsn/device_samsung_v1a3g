# Inherit from v1a3g device
$(call inherit-product, device/samsung/v1a3g/device.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
# Inherit more cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := lineage_v1a3g
PRODUCT_DEVICE := v1a3g
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-P901
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P901 \
    PRODUCT_NAME=v1a3gxx \
    PRODUCT_DEVICE=v1a3g \
    TARGET_DEVICE=v1a3g \
    PRIVATE_BUILD_DESC="v1a3gxx-user 5.0.2 LRX22G P901XXU0BPB1 release-keys"

BUILD_FINGERPRINT := "samsung/v1a3gxx/v1a3g:5.0.2/LRX22G/P901XXU0BPB1:user/release-keys"
