# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Camera
# http://r.cyanogenmod.com/#/c/13317/
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
# This is needed by libcamera.so
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

# Arch related defines
TARGET_BOARD_PLATFORM := msm7x27
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := pecan
TARGET_OTA_ASSERT_DEVICE := p350,pecan

# Target information
TARGET_NO_RADIOIMAGE := false
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_USES_OLD_LIBSENSORS_HAL:=true
TARGET_OTA_ASSERT_DEVICE := pecan

# Bootloader & recovery
TARGET_NO_BOOTLOADER := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_LDPI_RECOVERY := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_COMBO_DEVICE_SUPPORTED := true

# msm7x27: no support for overlay, bypass, or c2d
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false

# Skia
BOARD_USE_SKIA_LCDTEXT := true
BOARD_FORCE_DITHERING := true

#Enable OpenGL Hardware Acceleration
BOARD_EGL_CFG := device/lge/pecan/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Audio & Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_USES_AUDIO_LEGACY := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_GPS_LIBRARIES := libgps 
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pecan
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Browser & WebKit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Usb mass storage 
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# RIL
BOARD_PROVIDES_LIBRIL := true

# Wi-Fi & Wi-Fi HotSpot
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
BOARD_WEXT_NO_COMBO_SCAN    := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_HAS_LGE_SOFTAP  := true
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME     := "wireless"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wl/rtecdc-apsta.bin"

# FM Radio
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Kernel
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27
# Copy LG Kernel Headers here if necessary, DON'T use Adroid auto-generated headers
TARGET_SPECIFIC_HEADER_PATH := device/lge/pecan/include
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
TARGET_KERNEL_CONFIG := cyanogenmod_pecan_defconfig


# Command line for charging mode
BOARD_CHARGING_CMDLINE_NAME := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE := "pwroff"
BOARD_USES_RECOVERY_CHARGEMODE := false

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Fix this up by examining /proc/mtd on a running device
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_KERNEL_BASE := 0x02808000
BOARD_PAGE_SIZE := 0x00000800
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

# OTA script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/lge/pecan/releasetools/ota_from_target_files
