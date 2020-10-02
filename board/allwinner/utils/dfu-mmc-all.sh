#!/bin/bash
sudo dfu-util -l
echo -n "Waiting for DFU Device";
while [ -z "`sudo dfu-util -l | grep 'Found DFU'`" ]
do
    echo -n ".";
done
echo "Gotcha!";
sudo dfu-util -R -a all -D output/images/sysimage-sdcard.img
# sudo dfu-util -a u-boot -D output/images/u-boot-sunxi-with-spl.bin
# sudo dfu-util -a boot -D output/images/bootfs.vfat
# sudo dfu-util -a rom -D output/images/rootfs.ext4
# sudo dfu-util -a devicetree.dtb -D output/images/devicetree.dtb
# sudo dfu-util -a zImage -D output/images/zImage
