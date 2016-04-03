#! /bin/bash
if [ ! -d /media/slackware ]; 
then sudo mkdir /media/slackware
fi
sudo mount /dev/sda7 /media/slackware
sudo mount -t proc none /media/slackware/proc
sudo mount --rbind /dev /media/slackware/dev
sudo mount --rbind /sys /media/slackware/sys
sudo chroot /media/slackware/ 
