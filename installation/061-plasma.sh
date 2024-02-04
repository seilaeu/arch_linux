#! /bin/bash


# Plasma 5

sudo pacman -S plasma-desktop konsole kate dolphin ark kcalc okular gwenview plasma-pa kwalletmanager \
ktorrent elisa breeze-gtk kde-gtk-config kmymoney plasma-systemmonitor kdeplasma-addons kalarm sddm \
sddm-kcm kinfocenter kompare khotkeys kamoso plasma-nm kwallet-pam libappindicator-gtk3 audiocd-kio --needed

sudo systemctl enable sddm

echo
echo
echo


# Teclado português no sddm

sudo bash -c 'echo "setxkbmap pt" >> /usr/share/sddm/scripts/Xsetup'

sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf

echo "Definir Numlock=On"

sleep 5

sudo nano /etc/sddm.conf
