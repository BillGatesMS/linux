#!/bin/sh

#~/src/upgrade_tool/upgrade_tool UL /media/kever/data2/src/linux-sdk/rkbin/rk33/rk3399_loader_v1.08.106.bin
~/src/upgrade_tool/upgrade_tool DB /media/kever/data2/src/linux-sdk/rkbin/rk33/rk3399_loader_v1.08.106.bin
~/src/upgrade_tool/upgrade_tool WL 0x8000 boot_rk3399.img
#~/src/upgrade_tool/upgrade_tool WL 0x40000 /media/kever/data/src/linux-sdk/out/rootfs/system/linaro-rootfs.img
~/src/upgrade_tool/upgrade_tool RD
