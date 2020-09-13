LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libshims_dpmd.cpp
LOCAL_MODULE := libshims_dpmd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libshim_ims.cpp
LOCAL_MODULE := libshim_ims
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := libshims_imsrcsd.c
LOCAL_MODULE := libshims_imsrcsd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	strdup16to8.cpp \
	strdup8to16.cpp

LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := libcutils_shim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
