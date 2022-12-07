#! /bin/bash

sudo pacman -S xfce4 xfce4-whiskermenu-plugin leafpad lightdm lightdm-gtk-greeter numlockx xfce4-taskmanager --noconfirm --needed
sudo pacman -S thunar-archive-plugin ristretto mousepad atril galculator gvfs xfce4-pulseaudio-plugin menulibre --noconfirm --needed

sudo systemctl enable lightdm 

yay -S engrampa-thunar 
yay -S mugshot 
