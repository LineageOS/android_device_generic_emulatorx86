# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/generic/emulatorx86/emulatorx86.mk)

PRODUCT_NAME := cm_emulatorx86
PRODUCT_DEVICE := emulatorx86
PRODUCT_BRAND := CyanogenMod
PRODUCT_MODEL := Full CyanogenMod on x86 Emulator

PRODUCT_SDK_ADDON_NAME := cm12emu
PRODUCT_SDK_ADDON_SYS_IMG_SOURCE_PROP := $(LOCAL_PATH)/source.properties

# Copy the manifest and hardware files for the SDK add-on.
# The content of those files is manually created for now.
PRODUCT_SDK_ADDON_COPY_FILES := \
    $(LOCAL_PATH)/sdk_addon/manifest.ini:manifest.ini \
    $(LOCAL_PATH)/sdk_addon/hardware.ini:hardware.ini \

bacon: droid
