# Inherit my configuration
# 继承我的配置
$(call inherit-product, vendor/biantai/products/biantai.mk)

# Inherit AOSP configuration
# 继承AOSP配置
$(call inherit-product, device/asus/flo/full_flo.mk)

# Purge AOSP build properties
# 清理AOSP编译属性
PRODUCT_NAME := biantai_flo
PRODUCT_BRAND := Google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:4.4.2/KOT49H/937116:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 4.4.2 KOT49H 937116 release-keys"

# Include device specific bootanimation
# 包含设备专属的开机动画
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/bootanimation/flo.zip:system/media/bootanimation.zip
