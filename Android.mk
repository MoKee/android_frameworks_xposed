#
# Copyright (C) 2013 rovo89, Tungstwenty
# Copyright (C) 2017 The MoKee Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE := XposedBridge-hiddenapistubs
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    $(call all-java-files-under, hiddenapistubs/src/main/java)

include $(BUILD_STATIC_JAVA_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE := XposedBridge
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    $(call all-java-files-under, app/src/main/java) \
    $(call all-java-files-under, app/src/main/apacheCommonsLang)

LOCAL_JAVA_LIBRARIES := XposedBridge-hiddenapistubs

include $(BUILD_JAVA_LIBRARY)
