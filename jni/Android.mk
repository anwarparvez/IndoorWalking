LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_LIB_TYPE :=STATIC
include D:/Tools/OpenCV-2.4.2-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := native_sample
LOCAL_LDLIBS +=  -llog -ldl
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
LOCAL_SRC_FILES := jni_part.cpp

#LOCAL_STATIC_LIBRARIES := cxcore cv

include $(BUILD_SHARED_LIBRARY)
