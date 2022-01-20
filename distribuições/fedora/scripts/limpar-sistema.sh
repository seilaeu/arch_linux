echo "Limpar sistema!"
rm -rf ~/.cache/* 
rm -rf ~/.local/share/akonadi/* 
rm -rf ~/.local/share/Trash/* 
rm -rf ~/.thumbnails/*
sudo rm -rf /tmp/* 
sudo rm -rf /usr/share/doc/*
sudo rm -rf /usr/share/info/*
sudo rm -rf /usr/tmp/* 
sudo rm -rf /var/cache/*
sudo rm -rf /var/tmp/* 
sudo yum remove kernel
sudo package-cleanup --cleandupe
sudo yum clean all
echo "Sistema Fedora limpo!"
