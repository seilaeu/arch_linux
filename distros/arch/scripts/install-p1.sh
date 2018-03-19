#/bin/bash
# Teclado

loadkeys pt-latin9 &&

# Formatar partição raiz

################################################
#                Importante!!!                 #              # 
#  Mudar /dev/pclvm/arch? para a partição alvo #
################################################
#     | |
#     v v



# BTRFS

mkfs.btrfs -f -L "arch" /dev/pclvm/arch? &&

# Criar directorias (activo e reserva) e subvolume raiz

mkdir -p /media/arch &&

##Mudar sdaX para a partição alvo

mount -o rw,suid,dev,exec,auto,nouser,async,noatime,autodefrag,compress=lzo /dev/pclvm/arch? /media/arch &&
mkdir -p /media/arch/__reserva &&
mkdir -p /media/arch/__activo &&
btrfs sub create /media/arch/__activo/raiz &&
umount -l /media/arch &&
sleep 7 &&

################################################
# Importante!!! Mudar sdaX para a partição alvo#
################################################

# EXT4

#mkfs.ext4 /dev/sdaX &&
#e2label /dev/sdaX arch &&

#blkid &&

# Montar raiz em /mnt

################################################
# Importante!!! Mudar sdaX para a partição alvo#
################################################

if [[ ! -e /mnt ]]; then 
    mkdir /mnt
elif [[ ! -d /mnt ]]; then
    echo "/mnt already exists but is not a directory" 1>&2
fi
mount /dev/sdaX /mnt
df -h &&
sleep 7 &&

# Sites espelho
#echo "descomentar servidores portugueses em /etc/pacman.d/mirrorlist" &&

#echo 'Server = http://archlinux.dcc.fc.up.pt/$repo/os/$arch' > /etc/pacman.d/mirrorlist &&
#echo 'Server = http://ftp.rnl.tecnico.ulisboa.pt/pub/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist &&
#echo 'Server = http://ftp5.gwdg.de/pub/linux/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist &&
#echo 'Server = http://mirror.bitjungle.info/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist &&
#echo 'Server = http://archlinux.cu.be/$repo/os/$arch' >> /etc/pacman.d/mirrorlist &&

# Usar o reflector para gerar sitios-espelho alemaes seguros, ordenados por velocidade de transferencia decrescente:
# Nota: Portugal, infelizmente, nao tem sitios-espelho seguros

pacman -Sy reflector &&
reflector --verbose --country 'Germany' -l 200 -p https --sort rate --save /etc/pacman.d/mirrorlist &&

# Instalar sistema base
pacstrap -i /mnt/ base base-devel &&
 
# Criar o ficheiro fstab

genfstab -U -p /mnt >> /mnt/etc/fstab &&

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
