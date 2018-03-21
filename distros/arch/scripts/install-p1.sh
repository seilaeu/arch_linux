#/bin/bash

# Sites espelho

pacman -Sy reflector &&
reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist &&

# Instalar sistema base
pacstrap -i /mnt/ base base-devel &&
 
# Criar o ficheiro fstab

genfstab -U -p /mnt >> /mnt/etc/fstab &&

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
