# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/c8812e/c8812e.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Setup device configuration
PRODUCT_NAME := cm_c8812e
PRODUCT_DEVICE := c8812e
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI C8812E
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := C8812E

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=c8812e \
	BUILD_FINGERPRINT=huawei/c8812e:4.1.2/JZO54K/130412:user/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 130412 release" \
	BUILD_NUMBER=130412
