#
# Copyright 2020 The Android Open-Source Project
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

#
# All components inherited here go to system image
#
ifeq (,$(filter %_64,$(TARGET_PRODUCT)))
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
endif
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#
# All components inherited here go to product image
#
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# b/189477034: Bypass build time check on uses_libs until vendor fixes all their apps
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Enforce dark boot animation
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.theme=1

# Camera
PRODUCT_PACKAGES += \
    GcamPrebuilt

# Build Tensor/Pixel 2021 features
PRODUCT_PACKAGES += \
    PixelWallpapers2021 \
    pixel_experience_2021_midyear \
    pixel_experience_2021 \
    pixel_experience_2022_midyear \
    pixel_experience_2022

$(call inherit-product, device/google/crosshatch/BoardConfig-vendor.mk)
