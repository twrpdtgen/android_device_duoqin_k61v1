#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k61v1 device
$(call inherit-product, device/duoqin/k61v1/device.mk)

PRODUCT_DEVICE := k61v1
PRODUCT_NAME := omni_k61v1
PRODUCT_BRAND := Qin
PRODUCT_MODEL := F21 Pro
PRODUCT_MANUFACTURER := duoqin

PRODUCT_GMS_CLIENTID_BASE := android-duoqin

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_k61v1-eng 11 RQ1A.210205.004 eng.yu.20211215.232425 test-keys"

BUILD_FINGERPRINT := Qin/twrp_k61v1/k61v1:11/RQ1A.210205.004/yu12152320:eng/test-keys
