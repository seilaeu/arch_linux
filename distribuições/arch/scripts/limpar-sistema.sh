echo 

echo "Limpando o sistema..."

rm -rf ~/.cache/* 
rm -rf ~/.local/share/Trash/* 
rm -rf ~/.thumbnails/*
sudo rm -rf /mnt/dados/.Trash-*

sudo rm -rf /usr/tmp/* 
sudo chown $USER:$USER /tmp/makepkg

echo 

echo "Limpar Pacman Cache"
sudo pacman -Scc
yay -Scc

echo

echo "Limpar Orfãos"
sudo pacman -Rcsn $(pacman -Qqtd)
yay -Yc

echo

echo "Sistema limpo!"

echo
