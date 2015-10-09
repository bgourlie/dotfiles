#!/bin/bash

# This script should be run within the root of the git repo
DOTFILES=$(pwd)
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
ln -s $DOTFILES/.vimrc ~/.vimrc
ln -s $DOTFILES/.vimrc ~/.nvimrc
ln -s $DOTFILES/.ideavimrc ~/.ideavimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $DOTFILES/.vim/autoload ~/.nvim
