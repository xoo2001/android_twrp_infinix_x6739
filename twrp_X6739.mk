#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6739 device
$(call inherit-product, device/infinix/X6739/device.mk)

PRODUCT_DEVICE := Infinix-X6739
PRODUCT_NAME := twrp_X6739
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6739
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6739_h931-user 12 SP1A.210812.016 502100 release-keys"

BUILD_FINGERPRINT := Infinix/X6739-GL/Infinix-X6739:12/SP1A.210812.016/231212V1754:user/release-keys
