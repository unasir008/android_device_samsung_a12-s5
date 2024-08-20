#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a12 device
$(call inherit-product, device/samsung/a12/device.mk)

PRODUCT_DEVICE := a12
PRODUCT_NAME := twrp_a12
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A125F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a12nsxx-user 12 SP1A.210812.016 A125FXXS5CXE3 release-keys"

BUILD_FINGERPRINT := samsung/a12nsxx/a12:12/SP1A.210812.016/A125FXXS5CXE3:user/release-keys
