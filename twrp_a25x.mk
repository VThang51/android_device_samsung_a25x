# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a25x/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a25x/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := a25x
PRODUCT_DEVICE := a25x
PRODUCT_NAME := twrp_a25x
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A25 5G
PRODUCT_MANUFACTURER := samsung

