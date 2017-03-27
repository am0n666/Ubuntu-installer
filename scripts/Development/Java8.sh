#!/usr/bin/env bash

echo "Installing Java8"

if ! grep "^[^#;]" /etc/apt/sources.list /etc/apt/sources.list.d/* | grep -q webupd8team/jav ; then
    sudo apt-add-repository ppa:webupd8team/java -y
fi

sudo apt update
sudo apt install openjdk-8-jdk -y
