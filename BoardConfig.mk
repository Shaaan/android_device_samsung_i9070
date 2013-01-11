USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/janice/BoardConfigVendor.mk

#inherit from the common montblanc definitions
-include device/samsung/montblanc-common/BoardConfigCommon.mk

# Commented out since we don't have the CM kernel yet
#TARGET_KERNEL_CONFIG := cyanogen_janice_defconfig

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 641728512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_INITRC := device/samsung/u8500-common/rootdir/recovery.rc
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_PREBUILT_KERNEL := device/samsung/janice/kernel

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk1p1

# Assert
TARGET_OTA_ASSERT_DEVICE := janice,GT-I9070

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/janice/recovery.fstab
