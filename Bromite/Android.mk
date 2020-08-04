LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := Bromite
LOCAL_MULTILIB := both
ifeq ($(TARGET_CPU_ABI), arm64-v8a)
    LOCAL_SRC_FILES := arm64_ChromeModernPublic.apk
else
    LOCAL_SRC_FILES := arm_ChromeModernPublic.apk
endif
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser Browser2
include $(BUILD_PREBUILT)
