echo 

echo "Limpando o sistema..."
echo 
rm -rf /home/$USER/.cache/* 
mkdir /home/$USER/.cache/thumbnails/
rm -rf /home/$USER/.local/share/Trash/* 
sudo rm -rf /media/dados/.Trash-*
sudo rm -rf /root/.cache/*
sudo rm -rf /usr/tmp/* 

echo 

echo "Sistema limpo!"

echo
