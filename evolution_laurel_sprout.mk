#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from laurel_sprout device
$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit some common EvolutionX stuff.
WITH_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from custom vendor
#$(call inherit-product, vendor/MiuiCamera/config.mk)

# Props
EVO_MAINTAINER := HemantSachdeva
EVO_BUILD_TYPE := UNOFFICIAL
EVO_SUPPORT_URL := https://t.me/EvolutionXA3


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.15.0.QFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi