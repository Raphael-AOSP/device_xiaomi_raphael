#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# OMX 
TARGET_SUPPORTS_OMX_SERVICE := false

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# uwuAOSP product metadata
UWU_DEVICE_TYPE := phone
UWU_SUPPORTS_TELEPHONY := true
UWU_MAINTAINER := Hxsyzl

# Inherit uwuAOSP common configuration.
$(call inherit-product, vendor/uwu/config/common.mk)

# Gapps
#TARGET_BUILD_GAPPS := true

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Exclude QCOM powerhal manifest
TARGET_PROVIDES_POWERHAL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := uwu_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/raphael/raphael:17/CP2A.260605.016/OS4.0.0.16.XPCCNXM:user/release-keys
