#! /bin/bash


# Escolher os sites mais rápidos

pacman -Syy
pacman -S reflector rsync --noconfirm --needed

echo
echo
echo

sleep 3

reflector --verbose --country Portugal --sort rate --save /etc/pacman.d/mirrorlist 

echo
echo
echo

sleep 3

# Instalar sistema base

pacstrap -K /mnt/ base linux linux-firmware

echo
echo
echo

# Fstab

genfstab -U /mnt >> /mnt/etc/fstab 

nano /mnt/etc/fstab 

echo
echo
echo


# Mudar raiz para a directoria mnt

arch-chroot /mnt /bin/bash
