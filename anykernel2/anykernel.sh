# fuldaros @ 4pda

## AnyKernel setup
# begin properties
properties() {
kernel.string=DirtyV by bsmitty83 @ xda-developers
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=porridge
device.name2=spark
device.name3=alps6735
device.name4=
device.name5=
} # end properties

# shell variables
block=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;


## AnyKernel install
split_boot;

flash_boot;
## end install

