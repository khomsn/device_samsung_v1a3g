#!/bin/sh

mkdir -p ../../../out/target/product/v1a3g/system/etc/wifi
mkdir -p ../../../out/target/product/v1a3g/system/bin
cd ../../..

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
 
cd CWD
