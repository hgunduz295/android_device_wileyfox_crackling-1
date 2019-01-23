# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit from crackling device
$(call inherit-product, device/wileyfox/crackling/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_DEVICE := crackling
PRODUCT_NAME := bootleg_crackling
PRODUCT_BRAND := wileyfox
PRODUCT_MODEL := CRACKLING
PRODUCT_MANUFACTURER := wileyfox
BOARD_VENDOR := wileyfox

PRODUCT_GMS_CLIENTID_BASE := android-wileyfox

PRODUCT_MANUFACTURER := Wileyfox
PRODUCT_MODEL := Wileyfox Swift

PRODUCT_BRAND := Wileyfox
TARGET_VENDOR := wileyfox
TARGET_VENDOR_PRODUCT_NAME := Swift
TARGET_VENDOR_DEVICE_NAME := crackling

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="crackling-user 7.1.1 N6F26Y 5506d7d322 release-keys"

BUILD_FINGERPRINT := Wileyfox/Swift/crackling:7.1.1/N6F26Y/5506d7d322:user/release-keys

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := hgunduz295
