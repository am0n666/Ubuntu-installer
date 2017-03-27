#!/usr/bin/env bash

mkdir /tmp/adobefonts
cd /tmp/adobefonts
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip -O fonts.zip
unzip fonts.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
rm -rf /tmp/adobefonts
fc-cache -f -v
