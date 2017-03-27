#!/usr/bin/env bash

sudo apt remove wine* && sudo apt autoremove
sudo add-apt-repository ppa:jonathonf/wine  -y
sudo apt update
sudo apt install wine-stable -y
sudo apt install winetricks -y
# Another way to get the most recent stable version of Wine (i.e. 2.0 as of now), is to build wine from source tarball using following commands.
# wget http://dl.winehq.org/wine/source/2.0/wine-2.0.tar.bz2 -O /tmp/wine.tar.bz2
# cd /tmp
# tar xjf wine.tar.bz2 wine2
# cd wine2
# sudo ./configure
# sudo ./configure --enable-win64
# sudo make && sudo make install
