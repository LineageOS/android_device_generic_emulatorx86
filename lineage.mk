# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/generic/emulatorx86/emulatorx86.mk)

PRODUCT_NAME := lineage_emulatorx86
PRODUCT_DEVICE := emulatorx86
PRODUCT_BRAND := LineageOS
PRODUCT_MODEL := Full LineageOS on x86 Emulator

bacon: droid
