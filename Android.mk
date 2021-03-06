
LOCAL_PATH := $(call my-dir)

$(warning mynative)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    src/RawData.cpp \
    src/PngImage.cpp \
    src/PkgImage.cpp \
    src/KtxImage.cpp \
    src/Matrix.cpp \
    src/Sprite.cpp \
    src/util.cpp \
    src/drawer.cpp \
    src/drawer3D.cpp \
    src/main.cpp \


LOCAL_MODULE := libmynative
LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2  -lpng
LOCAL_WHOLE_STATIC_LIBRARIES := libandroid_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SDK_VERSION := current
LOCAL_MIN_SDK_VERSION := 21
LOCAL_PACKAGE_NAME := MyNative
LOCAL_JAVA_LIBRARIES := framework

include $(BUILD_PACKAGE)
