#! /bin/bash


echo
echo
echo
echo "Instalador do Arch Linux" 
echo
echo
echo

# Teclado português

loadkeys pt-latin9


# Verificar modo de arranque

ls /sys/firmware/efi/efivars

echo
echo
echo

sleep 3


# Interface de rede

echo "Interface de rede" 

echo
echo
echo

ip link

echo
echo
echo

sleep 10


# Ligação à Internet

echo "Ligação à Internet" 

echo
echo
echo

ping -c 3 archlinux.org

echo
echo
echo

sleep 3


# Relógio

timedatectl set-ntp true

echo "Verificar data e hora" 

echo
echo
echo

date

echo
echo
echo

sleep 10


# Partições

echo "Formatar e montar a partição raiz"

echo
echo
echo

sudo mkfs.ext4 /dev/sdaX

echo
echo
echo

sudo mount /dev/sdaX /mnt 

sleep 5

sudo mkdir -p /mnt/boot/efi

echo "Formatar e montar a partição efi"

echo
echo
echo

echo "Formatar a partição efi?"
echo "(Responda Sim ou Não)"

echo
echo
echo

read formatar

case $formatar in
          Sim)
      sudo mkfs.fat -F32 /dev/sdaY;; 
          Não) echo "A partição efi não foi formatada";;
esac

echo
echo    
echo

echo "Montando a partição efi"

sudo mount /dev/sdaY /mnt/boot/efi

echo
echo
echo

lsblk

echo
echo
echo
