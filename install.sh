#!/bin/bash

# install yay for it to work #
echo "yay must be installed"
echo "network manager must be enabled"

yay --needed --ask 4 -Sy - < packages.txt

sudo mkdir ~/.config
sudo mkdir /usr/share/backgrounds/

echo " copying files..."

git clone https://github.com/addy-dclxvi/gtk-theme-collections ~/.themes
sudo mv wallpaper.jpg /usr/share/backgrounds/
chmod +x ~/dotfiles/config/panel.sh
mv ratpoison/ratpoisonrc ~/.ratpoisonrc
sudo mv wallpapers/* /usr/share/backgrounds/
rm README.md
mv .config/* ~/.config/
mv starship.toml ~/.config/
mv .zshrc ~/.zshrc
mv .bashrc ~/.bashrc
sudo systemctl enable ly
sudo systemctl enable plymouth

