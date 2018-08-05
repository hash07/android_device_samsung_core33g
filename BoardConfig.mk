# Copyright (C) 2017 The Lineage Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from scx30g common configs
-include device/samsung/scx30g-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/core33g/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sc7730s

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6094323712
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Camera HAL1 hack
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# WiFi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4343
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH := "/vendor/etc/wifi/nvram_net.txt"
WIFI_BAND := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI := true

# Camera
###########################################
#TARGET_CAMERA_OPEN_SOURCE := true

# select camera 2M,3M,5M,8M
#CAMERA_SUPPORT_SIZE := 5M
#FRONT_CAMERA_SUPPORT_SIZE := 2M
#TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false

#face detect
#TARGET_BOARD_CAMERA_FACE_DETECT := false

#sensor interface
#TARGET_BOARD_BACK_CAMERA_INTERFACE := ccir
#TARGET_BOARD_FRONT_CAMERA_INTERFACE := ccir

#TARGET_BOARD_CAMERA_HAL_VERSION := HAL1.0

#select camera zsl cap mode
#TARGET_BOARD_CAMERA_CAPTURE_MODE := false

#rotation capture
#TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false

#select mipi d-phy mode(none, phya, phyb, phyab)
#TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
#TARGET_BOARD_BACK_CAMERA_MIPI := phyab
##########################################

# Kernel
TARGET_KERNEL_CONFIG := cyanogen_core33g_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/core33g

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Assert
TARGET_OTA_ASSERT_DEVICE := SM-G360H,SM-G360HU,core33g,core33gdd,core33gdx

# Graphics
#TARGET_USES_GRALLOC1 := true
#TARGET_UPDATED_MALI := true

# Sensors
TARGET_USES_SENSORS_WRAPPER := true

# Camera
TARGET_LD_SHIM_LIBS += \
	/system/vendor/lib/hw/camera.sc8830.so|libmemoryheapion.so
