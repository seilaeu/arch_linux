#/bin/bash

# Teclado
loadkeys pt-latin9 

# BTRFS e LVM

# Verificar o valor das variáveis vg, lv e xy. 

# Volume group name
vg=pclvm

# Logical volume name
lv=arch

# Device's path
device=/dev/$vg/$lv

# Logical volume size in Megabites or Gygabites
xy=20G#/bin/bash
# Teclado

lvcreate -L$xy -n $lv $vg

mkfs.btrfs -f -L "$lv" /dev/$vg/$lv

# Criar directorias (activo e reserva) e subvolume raiz

mkdir -p /media/arch

##Mudar sdaX para a partição alvo

mount -o rw,suid,dev,exec,auto,nouser,async,noatime,space_cache,autodefrag,compress=lzo /dev/$vg/$lv /media/arch
mkdir -p /media/arch/__activo
mkdir -p /media/arch/__reserva
btrfs sub create /media/arch/__activo/raiz
sleep 3
umount -l /media/arch
sleep 7

# EXT4

#mkfs.ext4 /dev/sdaX &&
#e2label /dev/sdaX arch &&

#blkid &&

# Montar raiz em /mnt

if [[ ! -e /mnt ]]; then
    mkdir /mnt
elif [[ ! -d /mnt ]]; then
    echo "/mnt already exists but is not a directory" 1>&2
fi
mount /dev/$vg/$lv /mnt
df -h &&
sleep 7

