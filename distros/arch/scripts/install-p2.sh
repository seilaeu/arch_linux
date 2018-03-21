 linux/distros/arch/scripts/install-p2-i1.sh # Localização

echo "pt_PT.UTF-8 UTF-8" > /etc/locale.gen &&
locale-gen && 
echo "LANG=pt_PT.UTF-8" > /etc/locale.conf &&
export LANG=pt_PT.UTF-8 &&

# Tipo de letra e teclado no terminal

echo "FONT=default8x16" > /etc/vconsole.conf &&
echo "KEYMAP=pt-latin9" >> /etc/vconsole.conf && 

# Fuso horário

ln -sf /usr/share/zoneinfo/Europe/Lisbon /etc/localtime && 

# Relógio

hwclock --systohc --utc &&

# Pacman
#echo '' >> /etc/pacman.conf &&
#echo '[multilib]' >> /etc/pacman.conf && 
#echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf && 
echo '' >> /etc/pacman.conf &&
echo '[archlinuxfr]' >> /etc/pacman.conf && 
echo 'SigLevel = Never' >> /etc/pacman.conf && 
echo 'Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf && 

# Hostname

echo arch > /etc/hostname &&

pacman -Syyu &&

# Palavra-passe do root

echo 'Definir palavra passe do root' &&
sleep 1 &&
passwd &&

# Adicionar utilizador
useradd -m -G wheel,storage,power,optical,audio,video -s /bin/bash jribeiro &&

echo 'Definir palavra passe do utilizador comum' &&
sleep 1 &&
passwd jribeiro &&

# Carregador de arranque
# Importante!!! Definir X em sdaX
# Importante!!! Decidir sobre a necessidade do pacote btrfs-progs

# pacman -S btrfs-progs

pacman -S grub os-prober &&
chmod -x /etc/grub.d/30_os-prober &&
grub-install --target=i386-pc --force /dev/sdaX &&
grub-mkconfig -o /boot/grub/grub.cfg &&

# Sudo

echo 'Descomentar a linha wheel' &&
sleep 5 &&
nano /etc/sudoers &&

# Activar a rede

systemctl enable dhcpcd.service 
