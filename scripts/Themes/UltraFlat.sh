#!/usr/bin/env bash

echo "Installing Ultra Flat"

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q noobslab/icons ; then
    sudo apt-add-repository ppa:noobslab/icons -y
fi

sudo apt update
sudo apt install ultra-flat-icons "ultra-flat-*" -y
