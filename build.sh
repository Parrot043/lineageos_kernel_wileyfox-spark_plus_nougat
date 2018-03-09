#!/bin/bash
# Architecture
export ARCH=arm64
export TARGET_ARCH=arm64
make O=out cyanogenmod_porridge_defconfig
export KBUILD_BUILD_USER=bulkin042
export KBUILD_BUILD_HOST=universal
export CROSS_COMPILE=~/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make O=out Image.gz-dtb
