# Copyright (C) 2014 The Android Open Source Project
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

# inherit from the proprietary version
-include vendor/xiaomi/kenzo/BoardConfigVendor.mk

LOCAL_PATH := device/xiaomi/kenzo

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8952
TARGET_NO_BOOTLOADER := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# CPU
TARGET_CPU_CORTEX_A53 := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=disabled
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_SEPARATED_DT := true
#BOARD_CUSTOM_BOOTIMG_MK := device/xiaomi/ido/mkbootimg.mk
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/ddd
TARGET_KERNEL_CONFIG := cyanogenmod_kenzo_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27980184576
TARGET_USERIMAGES_USE_EXT4 := true

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_HAS_QCOM_WLAN         := true
BOARD_HAS_QCOM_WLAN_SDK     := true
BOARD_WLAN_DEVICE           := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_PROVIDES_WCNSS_QMI   := true
TARGET_USES_WCNSS_CTRL      := true
TARGET_USES_QCOM_WCNSS_QMI  := true
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"

# QCOM
BOARD_USES_QCOM_HARDWARE := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
TARGET_USES_QCOM_BSP     := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP

TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Disable Jack & Jill compilation
ANDROID_COMPILE_WITH_JACK := false

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_LDPRELOAD := libNimsWrap.so
BOARD_USES_OPENSSL_SYMBOLS := true

#Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

#Enable SW based full disk encryption
TARGET_SWV8_DISK_ENCRYPTION := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Audio
AUDIO_FEATURE_DEEP_BUFFER_RINGTONE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Camera
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Bluetooth
BOARD_HAVE_BLUETOOTH      := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT     := true
QCOM_BT_USE_SMD_TTY       := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Malloc
MALLOC_IMPL := dlmalloc

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# PowerHAL
TARGET_POWERHAL_VARIANT      := qcom
TARGET_USES_CPU_BOOST_HINT := true

# GPS
#TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# RIL
TARGET_RIL_VARIANT := caf
PROTOBUF_SUPPORTED := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# CWM
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB := device/xiaomi/kenzo/rootdir/fstab.qcom

# TWRP
#DEVICE_RESOLUTION := 720x1280
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_TARGET_USES_QCOM_BSP := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_EXTPRA_LANGUAGES := true
#TW_DEFAULT_LANGUAGE := zh_CN
#TW_INCLUDE_CRYPTO := true
#TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
#TW_NEW_ION_HEAP := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_CUSTOM_THEME := device/xiaomi/ido/recovery/twres

#TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_msm

# Video
TARGET_HAVE_SIGNED_VENUS_FW := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk

