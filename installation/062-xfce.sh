#! /bin/bash

sudo pacman -S xfce4 xfce4-whiskermenu-plugin leafpad lightdm lightdm-gtk-greeter numlockx --noconfirm --needed
sudo pacman -S thunar-archive-plugin ristretto mousepad atril galculator gvfs gvfs-mtp --noconfirm --needed
sudo pacman -S xfce4-taskmanager xfce4-pulseaudio-plugin thunar-archive-plugin --noconfirm --needed

sudo systemctl enable lightdm 

yay -S mugshot menulibre 
