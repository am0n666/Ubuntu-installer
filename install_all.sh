#!/usr/bin/env bash

if [[ ! $EUID -ne 0 ]]; then
   echo "This script not must be run as root" 1>&2
   exit 1
fi

echo `dirname "$0"`
BASE=`dirname "$0"`

# Exit at every possible error
# See: http://www.davidpashley.com/articles/writing-robust-shell-scripts/#id2382181
set -e

sudo apt update
sudo apt upgrade -y

bash "$BASE/scripts/Tools/UnityTweakTools.sh"
bash "$BASE/scripts/Base.sh"
bash "$BASE/scripts/Browser/Chrome.sh"
bash "$BASE/scripts/IDE/PhpStorm.sh"
bash "$BASE/scripts/IDE/Atom.sh"
# bash "$BASE/scripts/IDE/AndroidStudio.sh"
bash "$BASE/scripts/Messaging/Franz.sh"
bash "$BASE/scripts/Themes/Flatabulous.sh"
# bash "$BASE/scripts/Themes/Numix.sh"
bash "$BASE/scripts/Themes/UltraFlat.sh"
bash "$BASE/scripts/Development/Docker.sh"
bash "$BASE/scripts/IDE/InkDrop.sh"

bash "$BASE/scripts/Tools/Stacer.sh"

bash "$BASE/scripts/Settings.sh"

echo "Fix all dependencies"
sudo apt-get install -f -y

# Changes the shell to ZSH afterwards
bash "$BASE/scripts/Tools/ZSH.sh"

# Reboot and you're ready to go!
