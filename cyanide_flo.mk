# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Inherit some common CYANIDE stuff.
#$(call inherit-product, vendor/cyanide/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cyanide/config/nfc_enhanced.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit cyanide common configuration
$(call inherit-product, vendor/cyanide/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/asus/flo/full_flo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flo
PRODUCT_NAME := cyanide_flo
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:6.0.1/MOB30X/3036618:user/release-keys \
PRIVATE_BUILD_DESC="razor-user 6.0.1 MOB30X 3036618 release-keys"
