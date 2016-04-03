#! /bin/bash
if [ ! -d /media/manjaro ]; 
then sudo mkdir /media/manjaro
fi
sudo mount /dev/sda11 /media/manjaro
sudo mount -t proc none /media/manjaro/proc
sudo mount --rbind /dev /media/manjaro/dev
sudo mount --rbind /sys /media/manjaro/sys
sudo chroot /media/manjaro/ 
