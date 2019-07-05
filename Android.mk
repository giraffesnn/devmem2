LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := devmem2

LOCAL_SRC_FILES := devmem2.c

LOCAL_CFLAGS := -Wno-error

include $(BUILD_EXECUTABLE)

