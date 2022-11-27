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

echo "Formatar a partição raiz"
echo "(ext4 ou btrfs)"

echo
echo
echo

read formatar_raiz

case $formatar_raiz in
          ext4)
     sudo mkfs.ext4 -L arch /dev/sdaX;; 
     echo "A partição raiz foi formatada em ext4";;
          btrfs) 
          
     echo "A partição efi não foi formatada";;
     echo "A partição raiz foi formatada em btrfs"
esac




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
echo "(sim ou não)"

echo
echo
echo

read formatar_efi

case $formatar_efi in
          sim)
      sudo mkfs.fat -F32 /dev/sdaY;; 
          não) echo "A partição efi não foi formatada";;
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
