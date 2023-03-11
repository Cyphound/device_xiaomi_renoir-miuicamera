#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/renoir-miuicamera

# Permissions
PRODUCT_COPY_FILES += \
    device/xiaomi/renoir-miuicamera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    device/xiaomi/renoir-miuicamera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    device/xiaomi/renoir-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    ro.product.mod_device=renoir

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/renoir-miuicamera/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/renoir-miuicamera/renoir-miuicamera-vendor.mk)