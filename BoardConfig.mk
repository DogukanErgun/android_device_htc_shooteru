# Copyright (C) 2009 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).


# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := shooter

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter

# 3D Support
TARGET_HARDWARE_3D := true

# GPS
TARGET_GPS_HAL_PATH := $(LOCAL_PATH)/gps


# Font 
EXTENDED_FONT_FOOTPRINT := true

# Kernel Details
TARGET_KERNEL_CONFIG := shooter_defconfig

# Camera
BOARD_HTC_3D_SUPPORT := true

#ION
TARGET_USES_ION := true

# Bluetooth/Wifi
-include device/htc/msm8660-common/bcmdhd.mk
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/shooteru/bluetooth

# Custom LUN File Path
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooteru no_console_suspend=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGE_SIZE := 2048 
BOARD_KERNEL_BASE := 0x48000000
# for 3.4 kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
#LOCAL_KERNEL := device/htc/shooteru/kernel/kernel-3.4

# for 3.0 kernel
LOCAL_KERNEL := device/htc/shooter/kernel/kernel

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel


# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode



# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p31: 000ffa00 00000200 "misc"
#mmcblk0p21: 00fffc00 00000200 "recovery"
#mmcblk0p20: 01000000 00000200 "boot"
#mmcblk0p22: 31fffc00 00000200 "system"
#mmcblk0p24: 077fde00 00000200 "cache"
#mmcblk0p23: 4aabc400 00000200 "userdata"
#mmcblk0p27: 01400000 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"
#mmcblk0p17: 02800000 00000200 "radio"
#mmcblk0p19: 01000000 00000200 "adsp"
#mmcblk0p18: 007ffa00 00000200 "radio_config"
#mmcblk0p25: 00400000 00000200 "modem_st1"
#mmcblk0p26: 00400000 00000200 "modem_st2"


# RIL
BOARD_RIL_CLASS := ../../../device/htc/shooteru/ril

# Misc
BOARD_USES_LEGACY_MMAP := true


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 262144

# Media
TARGET_NO_ADAPTIVE_PLAYBACK := true

#Recovery
#TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := device/htc/shooteru/ramdisk/fstab.shooteru
#TARGET_RECOVERY_UI_LIB := librecovery_ui_shooteru
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
#TARGET_RECOVERY_NO_MSM_BSP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/shooteru/recovery/graphics.c

#TWRP
DEVICE_RESOLUTION := 540x960
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_DUMLOCK := true
TW_INCLUDE_JB_CRYPTO := true
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

#Philz
TARGET_COMMON_NAME := HTC EVO 3D CDMA


