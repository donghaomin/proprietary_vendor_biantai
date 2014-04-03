# Inherit my configuration
# 继承我的配置
$(call inherit-product, vendor/biantai/products/biantai.mk)

# Inherit AOSP configuration
# 继承AOSP配置
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Purge AOSP build properties
# 清理AOSP编译属性
PRODUCT_NAME := biantai_manta
PRODUCT_BRAND := Google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mantaray \
    BUILD_FINGERPRINT=google/mantaray/manta:4.4.2/KOT49H/937116:user/release-keys \
    PRIVATE_BUILD_DESC="mantaray-user 4.4.2 KOT49H 937116 release-keys"

# Include device specific bootanimation
# 包含设备专属的开机动画
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/bootanimation/manta.zip:system/media/bootanimation.zip
