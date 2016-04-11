# Gestor de entrada no sistema

### SDDM
#pacman -S sddm &&
#systemctl enable sddm

### LIGHTDM
pacman -S lightdm lightdm-gtk-greeter numlockx &&
systemctl enable lightdm
systemctl start lightdm
