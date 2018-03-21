#/bin/bash

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
reflector --verbose --country 'Portugal' --sort rate --save /etc/pacman.d/mirrorlist &&

# Instalar sistema base
pacstrap -i /mnt/ base base-devel &&
 
# Criar o ficheiro fstab

genfstab -U -p /mnt >> /mnt/etc/fstab &&

# Mudar raiz para a directoria mnt

arch-chroot /mnt 
