#!/bin/bash
export LC_ALL=C 

export USE_CCACHE=1
export CCACHE_DIR=/home/Share/CCACHE
export TEMP=$CCACHE_DIR/tmp
export CCACHE_EXEC=/usr/bin/ccache
/usr/bin/ccache -M 50G
export ALLOW_MISSING_DEPENDENCIES=true

export _JAVA_OPTIONS=-Xmx4096m 

rm -r ~/Development/LineageOs17.1/out/target/product/v1a3g

# Enable SU
export WITH_SU=true

source build/envsetup.sh

breakfast v1a3g

mkdir -p ./out/target/product/v1a3g/system/vendor/etc/wifi
mkdir -p ./out/target/product/v1a3g/system/bin
#mkdir -p ./out/target/product/v1a3g/system/vendor/lib/soundfx

CWD="$(pwd)"

#cd out/target/product/v1a3g/system/vendor/lib/soundfx
# ln -sf liblvverx_3.25.00.so liblvverx.so
# ln -sf liblvvetx_3.25.00.so liblvvetx.so
# ln -sf liblvverx_3.20.03.so liblvverx.so
# ln -sf liblvvetx_3.20.03.so liblvvetx.so
 
cd $CWD

cd out/target/product/v1a3g/system/vendor/etc/wifi
 ln -sf bcmdhd_apsta.bin bcmdhd_apsta.bin_4354_a0
 ln -sf bcmdhd_apsta.bin bcmdhd_apsta.bin_4354_a1
 ln -sf bcmdhd_ibss.bin bcmdhd_ibss.bin_4354_a0
 ln -sf bcmdhd_ibss.bin bcmdhd_ibss.bin_4354_a1
 ln -sf bcmdhd_mfg.bin bcmdhd_mfg.bin_4354_a0
 ln -sf bcmdhd_mfg.bin bcmdhd_mfg.bin_4354_a1
 ln -sf bcmdhd_sta.bin bcmdhd_sta.bin_4354_a0
 ln -sf bcmdhd_sta.bin bcmdhd_sta.bin_4354_a1
 
cd ../../../bin
 ln -sf dhcpcd-6.8.2 dhcpcd
 
cd $CWD

croot

brunch v1a3g > built_v1a3g_log

pkill java

mv ~/Development/LineageOs17.1/out/target/product/v1a3g/*-UNOFFICIAL-v1a3g.zip ~/Development/LineageOs17.1/
#shutdown -h now

