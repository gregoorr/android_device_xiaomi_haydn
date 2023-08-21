#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/haydn/device.mk)

# Inherit some common DroidX-UI stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT := true

PRODUCT_NAME := droidx_haydn
PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn

# DroidX stuff
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 13 TKQ1.220829.002 V14.0.6.0.TKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:13/TKQ1.220829.002/V14.0.6.0.TKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
