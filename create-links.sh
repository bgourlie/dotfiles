#!/bin/bash

# This script should be run within the root of the git repo
DOTFILES=$(pwd)
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
ln -s $DOTFILES/.vimrc ~/.vimrc
ln -s $DOTFILES/.vimrc ~/.nvimrc
