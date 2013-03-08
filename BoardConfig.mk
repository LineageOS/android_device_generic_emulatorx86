# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# same as x86 except HAL
include device/generic/x86/BoardConfig.mk

# Build OpenGLES emulation libraries
BUILD_EMULATOR_OPENGL := true

# share the same one across all mini-emulators
BOARD_EGL_CFG := device/generic/mini-emulator-armv7-a-neon/egl.cfg

