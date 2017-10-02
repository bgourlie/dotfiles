#!/bin/bash

# This script should be run within the root of the git repo
DOTFILES=$(pwd)

# Init neovim config
mkdir -p $HOME/.config/nvim

ln -s $DOTFILES/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/.vimrc $HOME/.vimrc
ln -s $DOTFILES/.vimrc $HOME/.config/nvim/init.vim
ln -s $DOTFILES/.ideavimrc $HOME/.ideavimrc
#ln -s $DOTFILES/Default.sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default.sublime-keymap

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $HOME/.vim/autoload $HOME/.config/nvim/autoload
