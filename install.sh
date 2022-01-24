#!/bin/bash

# install yay for it to work #
echo "yay must be installed"
echo "network manager must be enabled"
echo "run as root"

yay --needed --ask 4 -Sy - < packages.txt

mkdir ~/.config/
mkdir /usr/share/backgrounds/
mkdir ~/.themes/

echo " copying files..."

git clone https://github.com/addy-dclxvi/gtk-theme-collections ~/.themes
sudo mv wallpaper.jpg /usr/share/backgrounds/
chmod +x ~/dotfiles/config/panel.sh
mv ratpoison/ratpoisonrc ~/.ratpoisonrc
sudo mv wallpapers/* /usr/share/backgrounds/
rm README.md
mv config/* ~/.config/
mv starship.toml ~/.config/
mv zshrc ~/.zshrc
mv bashrc ~/.bashrc
mv pelangi-noita/ ~/.themes/
mv Noita/ ~/.themes/
systemctl enable ly
systemctl enable plymouth

