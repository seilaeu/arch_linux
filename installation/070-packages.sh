#! /bin/bash

# Escritório
echo
echo
echo

sudo pacman -S libreoffice-fresh libreoffice-fresh-pt --needed


# Multimedia

sudo pacman -S vlc pipewire wireplumber pipewire-pulse plasma-pa pulsemixer --needed

echo
echo
echo

systemctl --user enable --now pipewire pipewire-pulse wireplumber

echo
echo
echo

sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-ugly --needed


# Compressão e descompressão 

sudo pacman -S unzip unrar --needed


# Letra

sudo pacman -S ttf-bitstream-vera --needed
yay -S ttf-ms-fonts

# Internet

sudo pacman -S firefox firefox-i18n-pt-pt wget --needed
yay -S protonvpn youtube-dl


# Utilitários

sudo pacman -S bash-completion ncdu usbutils reflector rsync --needed


# Cópias de segurança

yay -S spideroak-one


# Firewall

sudo pacman -S ufw --needed

sudo ufw enable

sudo ufw status verbose

sudo systemctl enable ufw.service


# Sistema

sudo pacman -S bind pacman-contrib pkgfile pkgstats whois --needed

sudo pkgfile -u


# Dicionários

sudo pacman -S aspell-pt --needed

yay -S hunspell-pt_pt mythes-pt_pt

