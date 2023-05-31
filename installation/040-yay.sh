#! /bin/bash

# Development
sudo pacman -S base-devel git --noconfirm --needed

echo
echo
echo


# YAY

git clone https://aur.archlinux.org/yay.git

echo
echo
echo

cd yay
makepkg -rsi
cd ..
rm -rf yay*
