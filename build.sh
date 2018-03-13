#!/bin/bash
# Architecture
export ARCH=arm64
export TARGET_ARCH=arm64
export KBUILD_BUILD_USER=PaperPlane
export KBUILD_BUILD_HOST=fuldaros
export CROSS_COMPILE=~/kernels/UBERTC5.3/bin/aarch64-linux-android-
make O=../out Image.gz-dtb
echo       COPY KERNEL       
rm ../CarlivImageKitchen64/boot-alps/boot.img-kernel
cat ../out/arch/arm64/boot/Image.gz-dtb > ../CarlivImageKitchen64/boot-alps/boot.img-kernel
echo         SUCCES!         

