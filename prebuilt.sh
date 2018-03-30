#!/bin/bash
# by fuldaros
rm -f gen.info
mkdir out
mkdir outkernel
export ARCH=arm64
stamp=$(date +"%H:%M:%S %Y.%m.%d");
echo "generate by fuldaros's script on "$stamp" " > gen.info
make O=../out/paperplane porridge_pp_defconfig
./build.sh
