#!/usr/bin/env bash


wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.3/Stacer_1.0.3_amd64.deb -O /tmp/stacer.deb
sudo dpkg -i stacer.deb
rm /tmp/stacer.deb
