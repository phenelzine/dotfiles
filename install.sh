#!/bin/bash

echo "run as root"

mkdir ~/.config/
mkdir /usr/share/backgrounds/
mkdir ~/.themes/

echo " copying files..."

git clone https://github.com/addy-dclxvi/gtk-theme-collections ~/.themes
mv wallpaper.jpg /usr/share/backgrounds/
chmod +x ~/dotfiles/config/panel.sh
mv icons/ ~/Images/icons/
mv ratpoison/ratpoisonrc ~/.ratpoisonrc
mv herbstluftwm ~/.config/
mv wallpapers/* /usr/share/backgrounds/
rm README.md
mv config/* ~/.config/
mv starship.toml ~/.config/
mv zshrc ~/.zshrc
mv bashrc ~/.bashrc
mv pelangi-noita/ ~/.themes/
mv Noita/ ~/.themes/
mv xinitrc ~/.xinitrc
