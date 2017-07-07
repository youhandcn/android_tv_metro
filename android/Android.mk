LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := TVAllInOne

LOCAL_SDK_VERSION := system_current
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_STATIC_JAVA_LIBRARIES := gson android-support-v4 org.apache.http.legacy
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_JAVACFLAGS := -Xlint:deprecation -Xlint:unchecked

#LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_OVERRIDES_PACKAGES := Trebuchet

include $(BUILD_PACKAGE)

#include $(CLEAR_VARS)
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := gson:lib/gson-2.2.4.jar httpcore:lib/httpcore-4.0.1.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := httpcore:libs/httpcore-4.0.1.jar
#include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
