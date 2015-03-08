#
# Copyright (C) 2011 The CyanogenMod Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/shooter/overlay

# ramdisk stuff
PRODUCT_COPY_FILES += \
    device/htc/shooter/ramdisk/init.shooter.rc:root/init.shooter.rc \
    device/htc/shooter/ramdisk/init.shooter.usb.rc:root/init.shooter.usb.rc \
    device/htc/shooter/ramdisk/ueventd.shooter.rc:root/ueventd.shooter.rc \
    device/htc/shooter/ramdisk/fstab.shooter:root/fstab.shooter

# recovery and custom charging
PRODUCT_PACKAGES += \
    init.recovery.shooter.rc \
    twrp.fstab \
    choice_fn \
    detect_key \
    offmode_charging \
    power_test \
    hostapd \
    hostapd_default.conf \
    htcbatt

# dsp Audio
PRODUCT_COPY_FILES += \
    device/htc/shooter/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/shooter/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/shooter/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/shooter/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/shooter/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/shooter/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/shooter/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/shooter/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/shooter/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/shooter/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/shooter/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/shooter/dsp/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
    device/htc/shooter/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/shooter/dsp/IOTable.txt:system/etc/IOTable.txt \
    device/htc/shooter/dsp/IOTable_NEL.txt:system/etc/IOTable_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP_NEL.txt:system/etc/soundimage/Sound_Phone_Original_HP_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_NEL.txt:system/etc/soundimage/Sound_Phone_Original_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC_Voda.txt:system/etc/soundimage/Sound_Phone_Original_REC_Voda.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK_NEL.txt:system/etc/soundimage/Sound_Phone_Original_SPK_NEL.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK_Voda.txt:system/etc/soundimage/Sound_Phone_Original_SPK_Voda.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/shooter/dsp/soundimage/Sound_Phone_Original_WB.txt:system/etc/soundimage/Sound_Phone_Original_WB.txt \
    device/htc/shooter/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/shooter/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/shooter/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg


# Bluetooth firmware
$(call inherit-product, device/htc/msm8660-common/bcm_hcd.mk)

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooter/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/shooter/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/shooter/keylayout/shooteru-keypad.kl:system/usr/keylayout/shooteru-keypad.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/htc/shooter/keychars/shooteru-keypad.kcm:system/usr/keychars/shooteru-keypad.kcm \
    device/htc/shooter/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm

# idc
PRODUCT_COPY_FILES += \
    device/htc/shooter/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/shooter/idc/shooteru-keypad.idc:system/usr/idc/shooteru-keypad.idc

# Device Specific Firmware
PRODUCT_COPY_FILES += \
    device/htc/shooter/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/shooter/firmware/default_rogers_bak.acdb:system/etc/firmware/default_rogers_bak.acdb

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/shooter/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/shooter/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/shooter/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/shooter/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/shooter/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# GPS
PRODUCT_PACKAGES += \
    gps.shooter

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Kernel init.d script
#PRODUCT_COPY_FILES += \
#    device/htc/shooteru/configs/99kernel:system/etc/init.d/99kernel \
#    device/htc/shooteru/configs/00_frandom:system/etc/init.d/00_frandom

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Fix USB transfer speeds
PRODUCT_PROPERTY_OVERRIDES += ro.vold.umsdirtyratio=20

# misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Media configuration
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# ADB
ADDITIONAL_DEFAULT_PROPERTIES+=  ro.adb.secure=0

$(call inherit-product, vendor/htc/shooter/shooteru-vendor.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/shooter/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/shooter/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
