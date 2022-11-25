cd /etc/fonts/conf.d

sudo ln -s ../conf.avail/10-sub-pixel-rgb.conf
sudo ln -s ../conf.avail/11-lcdfilter-default.conf 
sudo ln -s ../conf.avail/70-no-bitmaps.conf
sudo rm 10-scale-bitmap-fonts.conf 

ls -l

exit

nano ~/.Xresources

Xft.dpi: 101
Xft.autohint: 0
Xft.lcdfilter: lcddefault
Xft.hintstyle: hintfull
Xft.hinting: 1
Xft.antialias: 1
Xft.rgba: rgb

xdpyinfo | grep dots

xrdb -query | grep dpi

sudo bash -c 'echo "export FREETYPE_PROPERTIES=\"truetype:interpreter-version=35\"" >> /etc/profile.d/freetype2.sh'

Plasma 5

Geral, Barra de ferramentas, Menu e Título da janela: BitStreamVera Sans 10 
Tamanho fixo: Monospace 10
Pequeno: BitStreamVera Sans 9

Suavização activada
Sub-pixel: RGB
Sugestão: Completa
Forçar os ppp: 101

Konsole: Terminus 11

# Windows Fonts

su

mkdir /usr/share/fonts/WindowsFonts

cp /windows/Windows/Fonts/* /usr/share/fonts/WindowsFonts/

chmod 644 /usr/share/fonts/WindowsFonts/*

fc-cache --force
