#!/bin/sh
TOOLS_URL=https://downloads.openwrt.org/snapshots/targets/mediatek/mt7622
TOOLS_CHAIN=openwrt-sdk-mediatek-mt7622_gcc-8.4.0_musl.Linux-x86_64.tar.xz
wget $TOOLS_URL/$TOOLS_CHAIN .
tar -xf $TOOLS_CHAIN