echo 

echo "Limpando o sistema..."
echo 
rm -rf /home/$USER/.cache/* 
mkdir /home/$USER/.cache/thumbnails/
rm -rf /home/$USER/.local/share/Trash/* 
sudo rm -rf /mnt/dados/.Trash-*
sudo rm -rf /root/.cache/*
sudo rm -rf /usr/tmp/* 

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
