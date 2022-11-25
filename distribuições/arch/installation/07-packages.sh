8 no#! /bin/bash

# Escritório
sudo pacman -S libreoffice-fresh libreoffice-fresh-pt --needed


# Multimedia
sudo pacman -S vlc pipewire wireplumber pipewire-pulse pulsemixer plasma-pa --needed

systemctl --user enable --now pipewire pipewire-pulse wireplumber

sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-ugly --needed

#sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins libdvdcss libdvdread libdvdnav gecko-mediaplayer dvd+rw-tools dvdauthor dvgrab cdrdao

#sudo pacman -S alsa-utils vorbis-tools wavpack mp3gain fluidsynth mplayer vorbisgain dvd+rw-tools spotify --needed


# Compressão e descompressão 
sudo pacman -S unzip unrar --needed


# Tipos de letras

sudo pacman -S terminus-font ttf-bitstream-vera ttf-ubuntu-font-family --needed

#sudo pacman -S ttf-liberation ttf-droid adobe-source-sans-pro-fonts ttf-anonymous-pro ttf-dejavu ttf-gentium ttf-freefont --needed 

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
sudo pacman -S pkgfile pacman-contrib ncdu subversion sed reflector file pkgstats --needed
#sudo pacman -S cronie lshw vim --needed

sudo pkgfile -u

sudo systemctl start pkgstats.timer
sudo systemctl status pkgstats.timer

   
# Dicionários
sudo pacman -S aspell-pt --needed
yay -S hunspell-pt_pt mythes-pt_pt --needed


# Diversos
sudo pacman -S ntp --needed
yay -S srm



# Pacotes AUR

#yay -S neofetch 
#yay -S prelink oxygen-gtk3-git
#yay -S pyrenamer
#yay -S partitionmanager-git  
#yay -S preload
#yay -S ttf-ms-fonts
#yay -S fontconfig-ttf-ms-fonts
