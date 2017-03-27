#!/usr/bin/env bash

echo "Installing Numix"

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q numix ; then
    sudo apt-add-repository ppa:numix/ppa -y
fi

sudo apt update
sudo apt install  "numix-wallpaper-*" numix-gtk-theme numix-icon-theme-circle -y
