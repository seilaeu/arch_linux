#! /bin/bash
if [ ! -d /media/fedora ]; 
then sudo mkdir /media/fedora
fi
sudo mount /dev/sda8 /media/fedora
sudo mount -t proc none /media/fedora/proc
sudo mount --rbind /dev /media/fedora/dev
sudo mount --rbind /sys /media/fedora/sys
sudo chroot /media/fedora/ 
