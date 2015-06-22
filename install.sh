#!/bin/bash

PWD=`pwd`
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.vim
rm ~/.gitconfig
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/git_vimdiff.sh ~/git_vimdiff.sh

# need to add powerline configuraion
# http://qiita.com/alpaca_taichou/items/ab70f914a6a577e25d70
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
sudo update-alternatives --set editor /usr/bin/vim.basic

sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux=1.9a-1~ppa1~t htop

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
