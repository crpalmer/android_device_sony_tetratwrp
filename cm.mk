# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Release name
PRODUCT_RELEASE_NAME := tetra

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/tetratwrp/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tetratwrp
PRODUCT_NAME := cm_tetratwrp
PRODUCT_BRAND := Sony
PRODUCT_MODEL := SmartWatch 3
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=tetra \
    PRODUCT_NAME=tetra
