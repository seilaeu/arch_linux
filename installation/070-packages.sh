#! /bin/bash

# Escritório
echo
echo
echo

sudo pacman -S libreoffice-fresh libreoffice-fresh-pt --noconfirm --needed


# Multimedia

sudo pacman -S vlc pipewire wireplumber pipewire-pulse plasma-pa pulsemixer --noconfirm --needed

echo
echo
echo

systemctl --user enable --now pipewire pipewire-pulse wireplumber

echo
echo
echo

sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-ugly --noconfirm --needed


# Compressão e descompressão 

sudo pacman -S unzip unrar --noconfirm --needed


# Letra

sudo pacman -S ttf-bitstream-vera --noconfirm --needed
yay -S ttf-ms-win11-auto

# Internet

sudo pacman -S firefox firefox-i18n-pt-pt wget youtube-dl --noconfirm --needed
yay -S protonvpn


# Utilitários

sudo pacman -S bash-completion ncdu usbutils


# Cópias de segurança

yay -S spideroak-one


# Firewall

sudo pacman -S ufw --needed

sudo ufw enable

sudo ufw status verbose

sudo systemctl enable ufw.service


# Sistema

sudo pacman -S bind pacman-contrib pkgfile pkgstats whois --noconfirm --needed

sudo pkgfile -u

sudo systemctl start pkgstats.timer

sudo systemctl status pkgstats.timer

   
# Dicionários

sudo pacman -S aspell-pt --noconfirm --needed

yay -S hunspell-pt_pt mythes-pt_pt

