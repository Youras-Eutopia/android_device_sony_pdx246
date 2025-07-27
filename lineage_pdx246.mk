#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
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
PRODUCT_MODEL := XQ-ES72
PRODUCT_MANUFACTURER := Sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="XQ-ES72-user 15 70.1.A.3.188 070001A003018800523174845 release-keys" \
    BuildFingerprint=Sony/XQ-ES72/XQ-ES72:15/70.1.A.3.188/070001A003018800523174845:user/release-keys \
    DeviceName=XQ-ES72 \
    DeviceProduct=XQ-ES72 \
    SystemDevice=XQ-ES72 \
    SystemName=XQ-ES72
