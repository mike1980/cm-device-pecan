$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)
$(call inherit-product-if-exists, vendor/lge/pecan/pecan-vendor.mk)

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen

PRODUCT_COPY_FILES += \
     device/lge/pecan/releasetools/extras.sh:system/bin/extras.sh

PRODUCT_COPY_FILES += \
    device/lge/pecan/root/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/root/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/root/init.pecan.usb.rc:root/init.pecan.usb.rc \
    device/lge/pecan/root/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh \
    device/lge/pecan/root/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/init.init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

PRODUCT_COPY_FILES += \
    device/lge/pecan/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/pecan/configs/adreno_config.txt:system/etc/adreno_config.txt \
    device/lge/pecan/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lge/pecan/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/lge/pecan/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/pecan/configs/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/pecan/configs/vold.fstab:system/etc/vold.fstab 
    device/lge/pecan/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=msm7x27 \
    debug.camcorder.disablemeta=1 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=20

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.sf.hw=1 \
    debug.enabletr=false \
    debug.composition.type=mdp \
    debug.gr.numframebuffers=2 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Audio
PRODUCT_PACKAGES += \
    audio_policy.pecan \
    audio.primary.pecan \
    audio.a2dp.default 
    libaudioutils

# Display 
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libopencorehw \
    gralloc.msm7x27 \
    copybit.msm7x27 \
    hwcomposer.msm7x27

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt

# Misc Thing
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    gps.default \
    lights.msm7x27 \
    camera.msm7x27 \
    lgapversion

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# BT startup
PRODUCT_COPY_FILES += device/lge/pecan/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs


PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0


DEVICE_PACKAGE_OVERLAYS += device/lge/pecan/overlay