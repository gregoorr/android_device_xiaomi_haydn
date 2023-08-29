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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS stuff
RISING_CHIPSET := SM8350
WITH_GMS := false
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT := true

# Package Type
RISING_PACKAGE_TYPE := Gapps

# Maintainer flag
RISING_MAINTAINER := gregoorr

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_SUPPORT_FACE_UNLOCK := true

# Blur
TARGET_ENABLE_BLUR := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# RisingOS!
BUILD_HOSTNAME := RisingOS
BUILD_USERNAME := gregoorr

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := false

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2012K11G
PRODUCT_NAME := lineage_haydn

# crDroid flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_EXCLUDES_AUDIOFX := true
TARGET_CAMERA_USES_NEWER_HIDL_OVERRIDE_FORMAT := true

PRODUCT_SYSTEM_NAME := haydn_global
PRODUCT_SYSTEM_DEVICE := haydn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="haydn_global-user 13 TKQ1.220829.002 V14.0.6.0.TKKMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/haydn_global/haydn:13/TKQ1.220829.002/V14.0.6.0.TKKMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
