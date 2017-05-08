#!/bin/sh
#make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 rockchip_linux_defconfig
#make CROSS_COMPILE=~/src/gerrit-rockchip/aarch64-linux-android-4.9/bin/aarch64-linux-android- ARCH=arm64 -j8
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 -j8
#cp arch/arm64/boot/dts/rockchip/rk3399-evb.dtb boot/rk3399.dtb
cp arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator-linux.dtb boot/rk3399.dtb
#cp arch/arm64/boot/dts/rockchip/rk3399-firefly.dtb boot/rk3399.dtb
cp arch/arm64/boot/Image boot/
genext2fs -b 32768 -B $((32*1024*1024/32768)) -d boot/ -i 8192 -U boot_rk3399.img
echo "boot_rk3399.img ready!"
