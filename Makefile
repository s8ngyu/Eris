TARGET = simulator:clang::7.0
ARCHS = x86_64
#위 두줄은 따라하지 마세요!
#저는 iOS Simulator 환경에서 트윅을 개발하기에
#iOS Simulator에서 트윅을 실행하기 위해
#해놓은 겁니다.

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Eris
Eris_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
