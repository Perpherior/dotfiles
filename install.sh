#!/bin/bash

ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

git submodule init
git submodule update
