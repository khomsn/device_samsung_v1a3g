# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_k.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from viennalte device
$(call inherit-product, device/samsung/v1a3g/device.mk)
# Shipping API level

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
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

TARGET_VENDOR := samsung
