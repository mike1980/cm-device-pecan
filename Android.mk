ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pecan)
include $(call first-makefiles-under,$(call my-dir))
endif
  include $(call all-named-subdir-makefiles, recovery gadget_id hwaddrs libcamera libaudio libcopybit netd bdaddr_read)
#endif
