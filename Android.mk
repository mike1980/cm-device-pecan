ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pecan)
include $(call first-makefiles-under,$(call my-dir))
endif
  include $(call all-named-subdir-makefiles, hwaddrs libcamera libaudio netd bdaddr_read)
#endif
