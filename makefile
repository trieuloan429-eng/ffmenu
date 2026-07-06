export THEOS = /Users/runner/theos
TARGET := iphone:clang:latest:16.5
ARCHS := arm64

DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ffmenu

ffmenu_FILES = esp.mm $(wildcard sources/*.mm) $(wildcard sources/*.m) $(wildcard sources/*.cpp)
ffmenu_CFLAGS = -fobjc-arc -std=c++11
ffmenu_LDFLAGS = -all_load

include $(THEOS_MAKE_PATH)/tweak.mk
