#!/usr/bin/env bash

echo "Installing ZSH"

if ! grep -q '' ~/.zshrc ; then
    cat << EOL | tee ~/.zshrc

export ZSH=/$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git, composer, php, docker, phpunit, node)

source $ZSH/oh-my-zsh.sh
export PATH=/usr/share/doc/git/contrib/diff-highlight/:$PATH
EOL
fi


sudo apt update
sudo apt install git zsh -y

# Install Oh My ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
