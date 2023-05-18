#! /bin/bash


# Plasma 5

sudo pacman -S plasma-desktop konsole kate dolphin kcalc ark okular gwenview --noconfirm --needed
sudo pacman -S ktorrent elisa kdeconnect breeze-gtk kde-gtk-config kmymoney --noconfirm --needed
sudo pacman -S k3b sddm sddm-kcm kinfocenter kompare khotkeys kamoso plasma-nm --noconfirm --needed

sudo systemctl enable sddm

echo
echo
echo


# Teclado português no sddm

sudo bash -c 'echo "setxkbmap pt" >> /usr/share/sddm/scripts/Xsetup'

sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf

echo "Definir o tema breeze e o Numlock=On"

sleep 5

sudo nano /etc/sddm.conf
