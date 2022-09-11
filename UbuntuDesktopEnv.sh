#!/bin/bash

sudo apt install curl wget apt-transport-https ca-certificates software-properties-common
sudo apt install feh sxiv bat fzf
sudo apt install ffmpeg mpv

# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt fish

if [[ -d ~/.local/bin/ && -d ~/.local/share/applications/ ]] ; then
    echo "Proceeding .."
else
    mkidr ~/.local/bin/
    mkidr ~/.local/share/applications/
fi 
# kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# Update the path to the kitty icon in the kitty.desktop file(s)
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop

# NeoVIM
sudo apt install luajit
sudo snap install --edge nvim --classic

# NodeJS, NPM
curl -sL https://deb.nodesource.com/setup_17.x | sudo bash -
sudo apt update
sudo apt-get -y install nodejs


# ImageMagick
wget https://download.imagemagick.org/ImageMagick/download/binaries/magick
chomd +x magick
sudo mv magick /usr/bin/ 

# Tweaks, shell-extension
sudo apt install gnome-shell-extension gnome-tweaks dconf-editor

# pip
sudo apt install python3-pip
python3 -m pip install --user --upgrade pip
sudo apt install python3.8-venv

# Screen annotation software.
sudo apt install gromit-mpx

# qbittorrent latest
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

