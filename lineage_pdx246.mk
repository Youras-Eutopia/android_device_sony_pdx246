#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pdx246 device
$(call inherit-product, device/sony/pdx246/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_pdx246
PRODUCT_DEVICE := pdx246
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx246
PRODUCT_MANUFACTURER := Sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile
