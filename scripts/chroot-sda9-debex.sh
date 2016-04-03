#! /bin/bash
if [ ! -d /media/debex ]; 
then sudo mkdir /media/debex
fi
sudo mount /dev/sda9 /media/debex
sudo mount -t proc none /media/debex/proc
sudo mount --rbind /dev /media/debex/dev
sudo mount --rbind /sys /media/debex/sys
sudo chroot /media/debex/ 
