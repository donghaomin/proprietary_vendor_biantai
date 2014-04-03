# Google's general properties
# Google的常规属性
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# Bring in camera effects
# 引入相机效果
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/common/media/LMprec_508.emd:system/vendor/media/LMprec_508.emd \
    vendor/biantai/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Bring in all video files
# 引入所有的视频文件
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)

# Build AOSPA Lightbulb
# 编译 AOSPA Lightbulb
PRODUCT_PACKAGES += Lightbulb

# Include overlays
# 包含覆盖
PRODUCT_PACKAGE_OVERLAYS += vendor/biantai/overlay/common

# Include Google prebuilt LatinIME lib
# 包含Google预建的LatinIME lib
PRODUCT_COPY_FILES += \
    vendor/biantai/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Include multi-lingual LatinIME dictionaries
# 包含多国语言LatinIME词典
PRODUCT_PACKAGE_OVERLAYS += vendor/biantai/overlay/dictionaries

# Use Google stock sounds
# 使用谷歌原生声音
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_alert=Osmium.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.ringtone=Titania.ogg

# Enable SIP+VoIP on all targets
# 启用所有目标下的SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
