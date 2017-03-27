#!/usr/bin/env bash

echo "Installing PhpStorm"

command_exists () {
    type "$1" &> /dev/null ;
}

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q ubuntu-make ; then
    sudo apt-add-repository ppa:ubuntu-desktop/ubuntu-make -y
fi

sudo apt update
sudo apt install ubuntu-make -y
sudo apt install -f

if ! command_exists pstorm ; then
    yes | umake ide phpstorm /home/$(whoami)/.local/share/umake/ide/phpstorm
fi
