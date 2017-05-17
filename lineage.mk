
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooteru/shooteru.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooteru BUILD_FINGERPRINT="htc_europe/htc_shooteru/shooteru:4.0.3/IML74K/351412.1:user/release-keys" PRIVATE_BUILD_DESC="3.08.401.1 CL351412 release-keys"

# Device naming
PRODUCT_DEVICE := shooteru
PRODUCT_NAME := lineage_shooteru
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := Evo 3D GSM

# Boot animation (HACK 540.zip crashes PVR currently)
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 480

# Release name
PRODUCT_RELEASE_NAME := shooteru


