#!/usr/bin/env bash

echo 'Pull the repo to check for updates'
git pull origin master;

cd $HOME;

# Install needed packages
echo 'Start installing all the packages'
apt-get update
apt-get install i3 feh compton kitty neovim tmux zsh curl

echo 'Installing oh-my-zsh'
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Needed package to let NeoVim use Python to use YouCompleteMe
python3 -m pip install --user --upgrade pynvim

echo 'Installing miniconda'
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
source Miniconda3-latest-Linux-x86_64.sh -b
