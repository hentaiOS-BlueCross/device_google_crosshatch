#
# Copyright (C) 2022 Raphielscape LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display \
    vendor/qcom/opensource/display

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# RCS
PRODUCT_PACKAGES += \
    PresencePolling \
    RcsService

# Build necessary packages for product

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0

# Build necessary packages for vendor

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor \
    hardware.google.bluetooth.sar@1.0.vendor:64 \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

# CHRE
PRODUCT_PACKAGES += \
    chre

# Codec2
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor:32 \
    libavservices_minijail_vendor:32 \
    libcodec2_hidl@1.0.vendor:32 \
    libcodec2_vndk.vendor \
    libstagefright_bufferpool@2.0.1.vendor

# Confirmation UI
PRODUCT_PACKAGES += \
    android.hardware.confirmationui@1.0.vendor:64 \
    libteeui_hal_support.vendor:64

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0.vendor \
    vendor.display.config@1.1.vendor \
    vendor.display.config@1.2.vendor \
    vendor.display.config@1.3.vendor

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Identity credential
PRODUCT_PACKAGES += \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.identity_credential.xml

# Json
PRODUCT_PACKAGES += \
    libjson

# Nos
PRODUCT_PACKAGES += \
    libnos:64 \
    libnosprotos:64 \
    libnos_client_citadel:64 \
    libnos_datagram:64 \
    libnos_datagram_citadel:64 \
    libnos_transport:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal:64 \
    libwifi-hal-qcom

# Misc interfaces
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor:32 \
    android.frameworks.stats@1.0.vendor:64 \
    android.hardware.authsecret@1.0.vendor:64 \
    android.hardware.biometrics.fingerprint@2.1.vendor:64 \
    android.hardware.biometrics.fingerprint@2.2.vendor:64 \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@3.0.vendor:32 \
    android.hardware.keymaster@4.0.vendor:32 \
    android.hardware.neuralnetworks@1.0.vendor:64 \
    android.hardware.neuralnetworks@1.1.vendor:64 \
    android.hardware.neuralnetworks@1.2.vendor:64 \
    android.hardware.neuralnetworks@1.3.vendor:64 \
    android.hardware.oemlock@1.0.vendor:64 \
    android.hardware.radio.config@1.0.vendor:64 \
    android.hardware.radio.config@1.1.vendor:64 \
    android.hardware.radio.deprecated@1.0.vendor:64 \
    android.hardware.radio@1.2.vendor:64 \
    android.hardware.radio@1.3.vendor:64 \
    android.hardware.sensors@1.0.vendor:32 \
    android.hardware.sensors@2.0.vendor \
    android.hardware.weaver@1.0.vendor:64 \
    android.hardware.wifi@1.1.vendor:64 \
    android.hardware.wifi@1.2.vendor:64 \
    android.hardware.wifi@1.3.vendor:64 \
    android.hardware.wifi@1.4.vendor:64 \
    android.hardware.wifi@1.5.vendor:64 \
    android.system.net.netd@1.1.vendor:64

# Shims
PRODUCT_PACKAGES += \
    android.frameworks.stats-V1-ndk_platform.vendor:64 \
    android.hardware.identity-V3-ndk_platform.vendor:64 \
    android.hardware.keymaster-V3-ndk_platform.vendor:64 \
    android.hardware.power-V1-ndk_platform.vendor:64 \
    android.hardware.rebootescrow-V1-ndk_platform.vendor:64 \
    libgui_shim

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Google Battery/Toshay Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
	hardware/google/pixel-sepolicy/googlebattery \
	hardware/google/pixel-sepolicy/input
