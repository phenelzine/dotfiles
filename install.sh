#!/bin/bash

# install yay for it to work #
echo "yay must be installed"

yay --needed --ask 4 -Sy - < packages.txt

sudo mkdir ~/.config
sudo mkdir ~/.config/openbox
sudo mkdir ~/.config/tint2
sudo mkdir ~/.config/dunst

echo " now copy the files in the directories yourself"

