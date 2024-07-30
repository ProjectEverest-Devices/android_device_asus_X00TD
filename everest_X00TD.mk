#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common EverestOS stuff
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# EverestOS official flags
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := ∂σткιт
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true

# GApps flags
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LAWNCHAIR := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
WITH_GAPPS := true

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := everest_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00TD \
    PRODUCT_NAME=WW_X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/ASUS_X00TD/ASUS_X00TD:10/QKQ1/17.2017.2012.438-20201203:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.product.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system_ext.build.fingerprint=$(BUILD_FINGERPRINT)
