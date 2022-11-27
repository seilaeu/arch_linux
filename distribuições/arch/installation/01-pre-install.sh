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
     mkfs.ext4 -L arch /dev/sdaX
     echo "A partição raiz foi formatada em ext4"
     mount /dev/sdaX /mnt
     lsblk
     sleep 5
     ;;
          btrfs) 
     mkfs.btrfs -f -L arch /dev/sdaX
     echo "A partição raiz foi formatada em btrfs"
     mount /dev/sdaX /mnt
     btrfs sub create /mnt/@
     btrfs sub create /mnt/@home
     umount /mnt
     mount -o relatime,space_cache=v2,compress=zstd,ssd,discard,nodev,subvol=@ /dev/sdaX /mnt
     mkdir -p /mnt/{boot/efi,home}
     mount -o relatime,space_cache=v2,compress=zstd,ssd,discard,nodev,subvol=@home /dev/sdaX /mnt
     ;;
esac


echo
echo
echo





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
      echo "A partição efi foi formatada";;


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


     

     


 



