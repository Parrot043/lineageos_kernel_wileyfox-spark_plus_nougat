#!/bin/bash
# by fuldaros
stamp=$(date +"%Y%m%d-%H%M");
kernel=paperplane_"$stamp";
export ARCH=arm64
export TARGET_ARCH=arm64
export KBUILD_BUILD_USER=fuldaros
export KBUILD_BUILD_HOST=hhost
pwd > pwd.dat
read pwd < pwd.dat
rm -f pwd.dat
export CROSS_COMPILE="$pwd"/tools/bin/aarch64-linux-gnu-
cd sources/
make -j3 O=../out/paperplane Image.gz-dtb
echo       COPY KERNEL
echo       by fuldaros
cat ../out/paperplane/arch/arm64/boot/Image.gz-dtb > ../outkernel/"$kernel"
rm -rf ../out/paperplane/arch/arm64/boot/
