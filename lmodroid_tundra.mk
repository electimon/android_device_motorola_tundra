#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tundra device
$(call inherit-product, device/motorola/tundra/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# GApps
$(call inherit-product, vendor/gapps/config.mk)

PRODUCT_NAME := lmodroid_tundra
PRODUCT_DEVICE := tundra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 fusion

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=tundra_g \
    PRIVATE_BUILD_DESC="tundra_g-user 12 S3SJS32.1-86-1-3 b57e0-cb1dd8 release-keys"

BUILD_FINGERPRINT := motorola/tundra_g/tundra:12/S3SJS32.1-86-1-3/b57e0-cb1dd8:user/release-keys
