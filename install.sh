PWD=`pwd`
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.vim
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vim ~/.vim
sudo update-alternatives --set editor /usr/bin/vim.basic
git submodule init
git submodule update
