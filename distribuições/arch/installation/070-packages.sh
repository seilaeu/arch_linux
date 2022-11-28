#! /bin/bash

# Escritório
sudo pacman -S libreoffice-fresh libreoffice-fresh-pt --needed


# Multimedia
sudo pacman -S spotify vlc pipewire wireplumber pipewire-pulse plasma-pa --needed

systemctl --user enable --now pipewire pipewire-pulse wireplumber

sudo pacman -S cdrdao cdrtools dvd+rw-tools gst-plugins-good gst-plugins-bad gst-plugins-ugly --needed


# Compressão e descompressão 
sudo pacman -S unzip unrar --needed


# Tipos de letras

sudo pacman -S terminus-font ttf-dejavu ttf-bitstream-vera --needed


# Internet
sudo pacman -S firefox firefox-i18n-pt-pt wget rsync --needed
yay -S flashplugin

# Firewall

sudo pacman -S ufw

sudo ufw enable

sudo ufw status verbose

sudo systemctl enable ufw.service


# Gráficos
#sudo pacman -S gimp --needed
#yay -S gimp-plugin-resynthesizer-git --needed


# Sistema
sudo pacman -S cronie pkgfile pacman-contrib ncdu subversion sed reflector file pkgstats --needed

sudo pkgfile -u

sudo systemctl start pkgstats.timer
sudo systemctl status pkgstats.timer

   
# Dicionários
sudo pacman -S aspell-pt --needed
yay -S hunspell-pt_pt mythes-pt_pt


# Pacotes AUR

#yay -S
