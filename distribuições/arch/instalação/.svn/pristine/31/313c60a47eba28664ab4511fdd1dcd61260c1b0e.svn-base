# Nouveau

pacman -S xf86-video-nouveau lib32-mesa-libgl lib32-mesa-demos
echo 'Adicionar "nouveau" na linha "Modules" em /etc/mkinitcpio.conf' &&
sleep 7 &&
nano /etc/mkinitcpio.conf &&
sudo mkinitcpio -p linux &&
echo 'Section "Device"' > /etc/X11/xorg.conf.d/20-nouveau.conf &&
echo 'Identifier "Nvidia card"' >> /etc/X11/xorg.conf.d/20-nouveau.conf &&
echo 'Driver "nouveau"' >> /etc/X11/xorg.conf.d/20-nouveau.conf &&
echo 'EndSection' >> /etc/X11/xorg.conf.d/20-nouveau.conf
