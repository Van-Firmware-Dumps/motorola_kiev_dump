#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from msi device
$(call inherit-product, device/motorola/msi/device.mk)

PRODUCT_DEVICE := msi
PRODUCT_NAME := lineage_msi
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola System Image
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kiev_retail-user 11 RZKS31.Q3-25-15-11 feee1 release-keys"

BUILD_FINGERPRINT := motorola/msi/msi:11/RZKS31.Q3-25-15-11/feee1:user/release-keys
