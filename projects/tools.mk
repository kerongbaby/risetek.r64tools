export TOP_TOOLCHAIN=/home/wangyc/github/risetek.r64tools/toolchain
export TOPDIR=/home/wangyc/github/risetek.r64tools/toolchain
export INCLUDE_DIR=$(TOP_TOOLCHAIN)/include
export STAGING_DIR=$(TOP_TOOLCHAIN)/staging_dir
export TOOLCHAIN_DIR=$(STAGING_DIR)/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl
export LDCFLAGS=$(TOOLCHAIN_DIR)/usr/lib
export LD_LIBRARY_PATH=$(TOOLCHAIN_DIR)/usr/lib
export PKG_BUILD_DIR=/home/wangyc/github/risetek.r64tools/projects/tmp
export LINUX_KMOD_SUFFIX=ko

AARCH64_CROSS_COMPILE?=aarch64-openwrt-linux-
CROSS_COMPILE=$(TOOLCHAIN_DIR)/bin/$(AARCH64_CROSS_COMPILE)
##CROSS_COMPILE=

CFLAGS = -g -Wall

AS		= $(CROSS_COMPILE)as
LD		= $(CROSS_COMPILE)ld
CC		= $(CROSS_COMPILE)gcc
CPP		= $(CC) -E
AR		= $(CROSS_COMPILE)ar
NM		= $(CROSS_COMPILE)nm
STRIP		= $(CROSS_COMPILE)strip
OBJCOPY		= $(CROSS_COMPILE)objcopy
OBJDUMP		= $(CROSS_COMPILE)objdump
OBJSIZE		= $(CROSS_COMPILE)size
