# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/generic/emulatorx86/emulatorx86.mk)

PRODUCT_NAME := cm_emulatorx86
PRODUCT_DEVICE := emulatorx86
PRODUCT_BRAND := CyanogenMod
PRODUCT_MODEL := Full CyanogenMod on x86 Emulator

bacon: droid
