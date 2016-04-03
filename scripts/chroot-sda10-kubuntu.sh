#! /bin/bash
if [ ! -d /media/kubuntu ]; 
then sudo mkdir /media/kubuntu
fi
sudo mount /dev/sda10 /media/kubuntu
sudo mount -t proc none /media/kubuntu/proc
sudo mount --rbind /dev /media/kubuntu/dev
sudo mount --rbind /sys /media/kubuntu/sys
sudo chroot /media/kubuntu/ 
