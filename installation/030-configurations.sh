#! /bin/bash

echo
echo
echo

# Fuso horário

ln -sf /usr/share/zoneinfo/Europe/Lisbon /etc/localtime 

hwclock --systohc

# Localização

echo "pt_PT.UTF-8 UTF-8" > /etc/locale.gen 

locale-gen 

echo
echo
echo

echo "LANG=pt_PT.UTF-8" > /etc/locale.conf 


# Tipo de letra e teclado no terminal

echo "KEYMAP=pt-latin9" > /etc/vconsole.conf 
echo "FONT=lat1-16" >> /etc/vconsole.conf 
echo "FONT_MAP=8859-1" >> /etc/vconsole.conf

# Configuração da Rede

echo arch > /etc/hostname

echo "127.0.0.1	localhost" > /etc/hosts

echo "::1		localhost" >> /etc/hosts

echo "127.0.1.1      arch" >> /etc/hosts


# Palavra-passe do root

echo 'Definir a palavra passe do root' 
echo
echo

sleep 3

passwd 

echo
echo
echo

# Adicionar utilizador

echo 'Adicionar utilizador comum' 

useradd -m -g users -G wheel -s /bin/bash seilaeu 

echo
echo
echo

echo 'Definir a palavra passe de seilaeu' 

echo
echo
echo

sleep 3

passwd seilaeu 

echo
echo
echo

# Microde Intel--needed

pacman -S intel-ucode --needed

echo
echo
echo

# Carregador de arranque

pacman -S grub efibootmgr --needed

echo
echo
echo 

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch

grub-mkconfig -o /boot/grub/grub.cfg

echo
echo
echo


# Sudo

pacman -S sudo nano --needed

echo
echo
echo
echo 'Descomentar a linha wheel' 

echo
echo
echo

sleep 5

EDITOR=nano visudo 

echo
echo
echo

# Rede

pacman -S networkmanager --needed

systemctl enable NetworkManager

echo
echo
echo
