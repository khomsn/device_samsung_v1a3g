#!/bin/bash
export LC_ALL=C 

export USE_CCACHE=1
export TEMP=/home/Share/tmp
export CCACHE_DIR=/home/Share/CCACHE

export ALLOW_MISSING_DEPENDENCIES=true

prebuilts/misc/linux-x86/ccache/ccache -M 50G

export ANDROID_JACK_VM_ARGS="-Dfile.encoding=UTF-8 -XX:+TieredCompilation -Xmx4G"

# Enable SU
export WITH_SU=true

source build/envsetup.sh

breakfast v1a3g

#rm -r ./out/target/product/v1a3g
mkdir -p ./out/target/product/v1a3g/system/etc/wifi
mkdir -p ./out/target/product/v1a3g/system/bin

CWD="$(pwd)"

cd out/target/product/v1a3g/system/etc/wifi
 ln -sf bcmdhd_apsta.bin bcmdhd_apsta.bin_4354_a0
 ln -sf bcmdhd_apsta.bin bcmdhd_apsta.bin_4354_a1
 ln -sf bcmdhd_ibss.bin bcmdhd_ibss.bin_4354_a0
 ln -sf bcmdhd_ibss.bin bcmdhd_ibss.bin_4354_a1
 ln -sf bcmdhd_mfg.bin bcmdhd_mfg.bin_4354_a0
 ln -sf bcmdhd_mfg.bin bcmdhd_mfg.bin_4354_a1
 ln -sf bcmdhd_sta.bin bcmdhd_sta.bin_4354_a0
 ln -sf bcmdhd_sta.bin bcmdhd_sta.bin_4354_a1
 
cd ../../bin
 ln -sf dhcpcd-6.8.2 dhcpcd
 
cd $CWD

croot

brunch v1a3g > built_v1a3g_log

pkill java

rm -r ~/Development/Lineage/out/target/product/v1a3g/obj/PACKAGING
rm -r ~/Development/Lineage/out/target/product/v1a3g/obj/KERNEL_OBJ
#shutdown -h now

