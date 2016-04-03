#! /bin/bash
if [ ! -d /media/gentoo ]; 
then sudo mkdir /media/gentoo
fi
sudo mount /dev/sda6 /media/gentoo
sudo mount -t proc none /media/gentoo/proc
sudo mount --rbind /dev /media/gentoo/dev
sudo mount --rbind /sys /media/gentoo/sys
sudo chroot /media/gentoo/ 
