#!/usr/bin/env bash

echo "Installing Android Studio"

command_exists () {
    type "$1" &> /dev/null ;
}

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q ubuntu-make ; then
    sudo apt-add-repository ppa:ubuntu-desktop/ubuntu-make -y
fi

sudo apt update
sudo apt install ubuntu-make -y
sudo apt install -f

yes "a" | umake android /home/$(whoami)/.local/share/umake/android/android-studio

