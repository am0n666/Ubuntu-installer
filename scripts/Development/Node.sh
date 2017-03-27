#!/usr/bin/env bash

echo "Installing Node"

command_exists () {
    type "$1" &> /dev/null ;
}

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q ubuntu-make ; then
    sudo apt-add-repository ppa:ubuntu-desktop/ubuntu-make -y
fi

sudo apt update
sudo apt install ubuntu-make -y

if ! command_exists node ; then
    yes | umake nodejs /home/$(whoami)/.local/share/umake/nodejs/nodejs-lan
fi
