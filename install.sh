#!/bin/bash

PWD=`pwd`
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.vim
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim

# need to add powerline configuraion
# http://qiita.com/alpaca_taichou/items/ab70f914a6a577e25d70

sudo update-alternatives --set editor /usr/bin/vim.basic
