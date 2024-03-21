###************************************************************************##
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
###************************************************************************##

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ossi device
$(call inherit-product, device/oplus/ossi/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := lineage_ossi
PRODUCT_BRAND := oplus
PRODUCT_MODEL := realme 7/Narzo 20 Pro/Narzo 30 4G
PRODUCT_MANUFACTURER := oplus

PRODUCT_GMS_CLIENTID_BASE := android-oplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2155L1 \
    PRODUCT_NAME=RMX2155 \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 12 SP1A.210812.016 1668670161293 release-keys"

BUILD_FINGERPRINT := realme/RMX2155/RMX2155L1:12/SP1A.210812.016/Q.GDPR.202301071547:user/release-keys

