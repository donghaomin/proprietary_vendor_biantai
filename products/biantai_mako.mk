# Inherit my configuration
# 继承我的配置
$(call inherit-product, vendor/biantai/products/biantai.mk)

# Inherit AOSP configuration
# 继承AOSP配置
$(call inherit-product, device/lge/mako/full_mako.mk)

# Purge AOSP build properties
# 清理AOSP编译属性
PRODUCT_NAME := biantai_mako
PRODUCT_BRAND := Google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:4.4.2/KOT49H/937116:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 4.4.2 KOT49H 937116 release-keys"

# Include world APN list maintained by CyanogenMod
# 包含由CyanogenMod维护的世界APN列表
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Include device specific bootanimation
# 包含设备专属的开机动画
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/bootanimation/mako.zip:system/media/bootanimation.zip
