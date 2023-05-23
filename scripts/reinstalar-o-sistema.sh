#!/bin/bash

pacman -Qqn > pacotes-instalados-arch
sudo pacman -S --noconfirm `cat pacotes-instalados-arch`
rm pacotes-instalados-arch

pacman -Qqm > pacotes-instalados-aur
yay -S `cat pacotes-instalados-aur`
rm pacotes-instalados-aur
