#!/usr/bin/env bash

echo "Installing InkDrop"

cd /tmp
wget https://github.com/inkdropapp/releases/releases/download/v3.1.2/inkdrop_3.1.2_amd64.deb
sudo dpkg -i inkdrop_3.1.2_amd64.deb
rm inkdrop_3.1.2_amd64.deb
