#! /bin/bash
if [ ! -d /media/arch ]; 
then sudo mkdir /media/arch
fi
sudo mount /dev/sda5 /media/arch
sudo mount -t proc none /media/arch/proc
sudo mount --rbind /dev /media/arch/dev
sudo mount --rbind /sys /media/arch/sys
sudo chroot /media/arch/ 
