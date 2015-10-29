# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# same as x86 except HAL
include device/generic/x86/BoardConfig.mk

# Define kernel config for inline building
#KERNEL_TOOLCHAIN := external/qemu/distrib/kernel-toolchain
KERNEL_TOOLCHAIN_PREFIX := $(abspath external/qemu/distrib/kernel-toolchain/android-kernel-toolchain-)
KERNEL_REAL_TOOLCHAIN_PREFIX := $(abspath prebuilts/gcc/linux-x86/x86/x86_64-linux-android-4.8/bin/x86_64-linux-android-)
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_NO_KERNEL :=
TARGET_NO_RAMDISK :=
TARGET_KERNEL_CONFIG := goldfish_defconfig
TARGET_KERNEL_SOURCE := kernel/goldfish

# TARGET_KERNEL_CONFIG := cyanogenmod_emulatorx86_x86_defconfig
# TARGET_KERNEL_SOURCE := prebuilts/qemu-kernel/x86
# TARGET_PREBUILT_KERNEL := prebuilts/qemu-kernel/x86/kernel-qemu

# Build OpenGLES emulation libraries
BUILD_EMULATOR_OPENGL := true
BUILD_EMULATOR_OPENGL_DRIVER := true

# share the same one across all mini-emulators
BOARD_EGL_CFG := device/generic/goldfish/opengl/system/egl/egl.cfg

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 576716800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

