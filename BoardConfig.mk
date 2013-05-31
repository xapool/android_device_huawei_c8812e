USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/c8812e/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/huawei/c8812e/include

# Target Boot & Recovery
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
# TARGET_NO_RECOVERY := true

# Platform
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
## when 4.1.2 has that,compile error
TARGET_ARCH_VARIANT_CPU := cortex-a5
#test this frorm ivan
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true 
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true 

TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOOTLOADER_BOARD_NAME := c8812e
TARGET_OTA_ASSERT_DEVICE := c8812e,hwc8812e,C8812E

BOARD_WANTS_EMMC_BOOT := true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Video
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_LEGACY_OMX

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Lights
TARGET_PROVIDES_LIBLIGHTS := true

# GPS
BOARD_USES_QCOM_LIBRPC := true 
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := c8812e
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true
# just test,i dont know what's that
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

BOARD_USES_QCOM_LIBS := true 

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
# just test
#BOARD_HAVE_BLUETOOTH_BCM := true
# just for 4.2
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/c8812e/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/huawei/c8812e/bluetooth/vnd_c8812e.txt
# i dont know what's that,just test
BLUETOOTH_HCI_USE_MCT := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DQCOM_FM_ENABLED

#BOARD_HAVE_FM_RADIO := true
#BOARD_FM_DEVICE := bcm4330
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DQCOM_FM_ENABLED
#BOARD_FM_DEVICE := brcm2049

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/c8812e/ril/

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/c8812e/prebuilt/system/lib/egl/egl.cfg
#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_NEEDS_LEGACY_FB := true

#Graphics
USE_OPENGL_RENDERER := true
#TARGET_GRALLOC_USES_ASHMEM := true
# this for copybit hal,clean it because flicker
#TARGET_USES_C2D_COMPOSITION := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 
#TARGET_NO_HW_VSYNC := false
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_HAVE_BYPASS  := false
TARGET_USES_GENLOCK := true 
TARGET_QCOM_HDMI_OUT := false
# display-legacy no it
TARGET_USES_QCOM_BSP := true 

# Webkit
ENABLE_JSC_JIT := true
HTTP := chrome
JS_ENGINE := v8
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wi-Fi
#BOARD_USE_SERNUM_FOR_MAC := true
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_NAME := "ar6000"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
# maybe just for BCM ?? compile error
#BOARD_LEGACY_NL80211_STA_EVENTS := true

##try to fix Wi-Fi tethering
# Wi-Fi Hotspot,just for ics
#BOARD_HAVE_LEGACY_HOSTAPD := true
#BOARD_HOSTAPD_NO_ENTROPY := true

# Partition sizes
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p15
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00C00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 183500800
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel 
#TARGET_KERNEL_SOURCE := ../Kernel/G510
#TARGET_KERNEL_CONFIG := hw_msm8x25_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/c8812e/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 2048

# USB Mounting
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

####################################################################################
# TWRP Recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/c8812e/recovery_kernel
#DEVICE_RESOLUTION := 480x800
#BOARD_USES_MMCUTILS := true
#BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_HAS_NO_MISC_PARTITION := true

#TW_INTERNAL_STORAGE_PATH := "/sdcard"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/c8812e/recovery/graphics_cn.c
#TARGET_RECOVERY_INITRC := device/huawei/c8812e/recovery/recovery.rc

# Brightness information
#TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.589824/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255 
###################################################################################

# CWM Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/c8812e/recovery/recovery_keys.c
# BOARD_UMS_LUNFILE                := "/sys/devices/platform/msm_hsusb/gadget/lun%1/file"
TARGET_RECOVERY_INITRC		 := device/huawei/c8812e/recovery/init.rc
TARGET_RECOVERY_PIXEL_FORMAT	:= "RGBX_8888"

