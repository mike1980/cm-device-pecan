# HACK for prebuilt libril and libcamera
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)


ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pecan)
include $(call first-makefiles-under,$(call my-dir))
endif
  include $(call all-named-subdir-makefiles, recovery gadget_id hwaddrs libcamera libaudio libcopybit netd bdaddr_read)
#endif
