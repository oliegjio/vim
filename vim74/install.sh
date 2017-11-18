#!/bin/bash

mkdir -p /usr/share/vim/vim74/bundle
cp vimrc /usr/share/vim/
cp vimrc /etc/
rsync -Cr --exclude=".gitkeep" ../Vundle.vim /usr/share/vim/vim74/bundle/
vim +PluginInstall +qall
