#!/bin/bash

#Sítios espelho - Repositórios de programas

sudo reflector --verbose --country Germany -a 1 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Sy
