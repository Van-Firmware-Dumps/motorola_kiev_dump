#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from kiev device
$(call inherit-product, device/motorola/kiev/device.mk)

PRODUCT_DEVICE := kiev
PRODUCT_NAME := omni_kiev
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kiev_retail-user 11 RZKS31.Q3-25-15-11 feee1 release-keys"

BUILD_FINGERPRINT := motorola/kiev_retail/kiev:11/RZKS31.Q3-25-15-11/feee1:user/release-keys
