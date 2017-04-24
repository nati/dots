#!/bin/bash

PWD=`pwd`
rm -rf ~/.gitconfig
rm -rf ~/.config
ln -s $PWD/config ~/.config
ln -s $PWD/gitconfig ~/.gitconfig

if [ "$(uname)" == 'Darwin' ]; then
	OS='Mac'
	brew install peco
	brew install fish
	cp keybindings.json "/Users/$USER/Library/Application\ Support/Code/User"
	cp settings.json "/Users/$USER/Library/Application\ Support/Code/User"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
	OS='Linux'
	rm ~/.vimrc
	rm ~/.vim
	rm ~/.bashrc
	ln -s $PWD/vimrc ~/.vimrc
	ln -s $PWD/vim ~/.vim
	ln -s $PWD/.bashrc ~/.bashrc
	ln -s $PWD/.bash_profile ~/.bash_profile
	ln -s $PWD/git_vimdiff.sh ~/git_vimdiff.sh
	sudo update-alternatives --set editor /usr/bin/vim.basic
else
	echo "Your platform ($(uname -a)) is not supported."
	exit 1
fi
