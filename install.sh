#!/usr/bin/bash

echo 'Pull the repo to check for updates'
git pull origin master;

cd $HOME;

# Install needed packages
sudo apt-get update
echo 'Start installing all the packages'
sudo apt-get install -y i3 feh compton kitty neovim tmux zsh curl zathura redshift

echo 'Installing oh-my-zsh'
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
