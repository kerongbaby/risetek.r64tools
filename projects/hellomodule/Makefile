include ../tools.mk

obj-m += main.o

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=khelloworld
PKG_RELEASE:=1
PKG_VERSION:=1.0

include $(INCLUDE_DIR)/package.mk

define KernelPackage/khelloworld
  SUBMENU:=HELLO WORLD MODULES
  TITLE:=khelloworld
  MAINTAINER:=Nobody
  MENU:=1
  FILES:=$(PKG_BUILD_DIR)/$(PKG_NAME).$(LINUX_KMOD_SUFFIX)
endef

EXTRA_KCONFIG:= \
    CONFIG_HELLO_MOD=m

EXTRA_CFLAGS:= \
    $(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=m,%,$(filter %=m,$(EXTRA_KCONFIG)))) \
    $(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=y,%,$(filter %=y,$(EXTRA_KCONFIG)))) \

#MAKE_OPTS:= \
#   EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
#   $(EXTRA_KCONFIG)

define Build/Prepare
    # Copy sources
    mkdir -p $(PKG_BUILD_DIR)
    cp -R ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
    $(MAKE) -C "$(LINUX_DIR)" \
        CROSS_COMPILE="$(TARGET_CROSS)" \
        ARCH="$(LINUX_KARCH)" \
        SUBDIRS="$(PKG_BUILD_DIR)" \
        EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
        $(EXTRA_KCONFIG) \
        modules
endef

$(eval $(call KernelPackage,khelloworld))
