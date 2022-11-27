#! /bin/bash


# Plasma 5

sudo pacman -S plasma-desktop konsole dolphin kate kcalc kfind ark okular gwenview  kipi-plugins qbittorrent clementine \
kdeconnect breeze-gtk kde-gtk-config kmymoney sddm kinfocenter kompare --needed

sudo systemctl enable sddm

echo
echo
echo

# sudo pacman -S kdeplasma-addons plasma-nm spectacle --needed

# Teclado português no sddm
sudo echo "setxkbmap pt" >> /usr/share/sddm/scripts/Xsetup
kompare kde
sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf

echo "Definir o tema breeze e o Numlock=On"

sleep 5

sudo nano /etc/sddm.conf
