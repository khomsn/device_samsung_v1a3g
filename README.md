Device configuration for the Samsung Galaxy Note Pro 12.2 

SM-P901 EXYNOS-5420

Copyright (C) 2017 The LineageOS Project

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

------------------------------------------------------------------

* Description

  This repository is for LineageOS on Samsung Galaxy Note Pro 12.2 (v1a3g)

* How To Build LineageOS for Samsung Galaxy Note Pro 12.2

  - Make a workspace

mkdir LineageOS17.1
cd LineageOS17.1

  - Do repo init & sync

repo init -u git://github.com/LineageOS/android.git -b lineage-17.1

  - Create .repo/local_manifests/roomservice.xml with the following content:

```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="khomsn/android_device_samsung_v1a3g" path="device/samsung/v1a3g" remote="github" />
  <project name="khomsn/android_kernel_samsung_exynos5420" path="kernel/samsung/exynos5420" remote="github" />
  <project name="khomsn/android_vendor_samsung_v1a3g" path="vendor/samsung/v1a3g" remote="github" />
  <project name="khomsn/android_hardware_samsung_slsi_exynos" path="hardware/samsung_slsi/exynos" remote="github" />
  <project name="khomsn/android_hardware_samsung_slsi_exynos5" path="hardware/samsung_slsi/exynos5" remote="github" />
  <project name="khomsn/android_hardware_samsung_slsi_exynos5420" path="hardware/samsung_slsi/exynos5420" remote="github" />
  <project name="khomsn/android_hardware_samsung_slsi_openmax" path="hardware/samsung_slsi/openmax" remote="github" />
  <project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" />
</manifest>
```

repo sync

  - Copy proprietary vendor files

  There are two options to to that. Connect your device with adb enabled and run:

./extract-files.sh

  Or if you have the system image unpacked on your disk, then simply run:

    STOCK_ROM_DIR=/path/to/system ./extract-files.sh

  - Setup environment

. build/envsetup.sh

  - fixes for build (repopick)

. picks.sh

  - Build LineageOS17.1

brunch v1a3g

or another way:

lunch lineage_v1a3g-userdebug
export USE_CCACHE=1
make -j16 bacon
