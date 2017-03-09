#!/bin/bash

PWD=`pwd`
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.vim
rm ~/.gitconfig
rm ~/.bashrc
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/git_vimdiff.sh ~/git_vimdiff.sh
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.bash_profile ~/.bash_profile

if [ "$(uname)" == 'Darwin' ]; then
	brew install peco	
	OS='Mac'
	cp keybindings.json "/Users/$USER/Library/Application\ Support/Code/User"
	cp settings.json "/Users/$USER/Library/Application\ Support/Code/User"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
	OS='Linux'
	sudo update-alternatives --set editor /usr/bin/vim.basic
else
	echo "Your platform ($(uname -a)) is not supported."
	exit 1
fi
