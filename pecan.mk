$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)
$(call inherit-product-if-exists, vendor/lge/pecan/pecan-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/pecan/overlay


PRODUCT_LOCALES := en_GB

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# Releasetools
PRODUCT_COPY_FILES += \
     device/lge/pecan/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/vold.fstab:system/etc/vold.fstab 

# Init
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/files/init.pecan.usb.rc:root/init.pecan.usb.rc \
    device/lge/pecan/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh
    device/lge/pecan/files/init.init.qcom.post_boot.sh::system/etc/init.qcom.post_boot.sh
    
# Initlogo
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/initlogo.rle:root/initlogo.rle

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/pecan/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Audio
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/audio.primary.pecan.so:system/lib/hw/audio.primary.pecan.so \
    device/lge/pecan/prebuilt/lib/hw/audio_policy.pecan.so:system/lib/hw/audio_policy.pecan.so \
    vendor/lge/pecan/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Touch and IDC
PRODUCT_COPY_FILES += \
    device/lge/pecan/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/pecan/configs/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/lge/pecan/configs/touch_mcs7000.kl:system/usr/keylayout/touch_mcs7000.kl \
    device/lge/pecan/configs/keychars/touch_mcs7000.kcm.bin:system/usr/keychars/touch_mcs7000.kcm.bin \
    device/lge/pecan/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lge/pecan/configs/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/lge/pecan/configs/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/lge/pecan/configs/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/lge/pecan/configs/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/lge/pecan/configs/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/lge/pecan/configs/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/lge/pecan/configs/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/lge/pecan/configs/idc/touch_mcs7000.idc:system/usr/idc/touch_mcs7000.idc 

# Camera 
PRODUCT_COPY_FILES += \
     device/lge/pecan/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
     device/lge/pecan/prebuilt/lib/libcamera.so:system/lib/libcamera.so \

PRODUCT_AAPT_CONFIG := normal ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

# Apps
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    FM

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 
    PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Audio
PRODUCT_PACKAGES += \
    audio_policy.pecan \
    audio.primary.pecan \
    audio.a2dp.default 

# Display
PRODUCT_PACKAGES += \
   libmemalloc \
   liboverlay \
   libQcomUI \
   libtilerenderer \
   libopencorehw \
   gralloc.msm7x27 \
   copybit.msm7x27 \
   hwcomposer.msm7x27

# BT startup
PRODUCT_COPY_FILES += device/lge/pecan/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh
PRODUCT_PACKAGES += \
    hcitool \
    hciconfig \
    hwaddrs

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    lights.msm7x27 \
    camera.msm7x27 \
    gadget_id \
    bash \
    dexpreopt 
    #gps.pecan 

# Media
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt

$(call inherit-product, build/target/product/full.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := LG_p350
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := LG Optimus ME
PRODUCT_MANUFACTURER := LGE
