#!/bin/bash

ln -s ~/Dropbox/macSetting/bash_profile ~/.bash_profile
ln -s ~/Dropbox/macSetting/gitconfig ~/.gitconfig
ln -s ~/Dropbox/macSetting/.vi
ln -s ~/Dropbox/macSetting/.vimrc ~/.vimrc
ln -s ~/Dropbox/macSetting/.irbrc ~/.irbrc

git submodule init
git submodule update
