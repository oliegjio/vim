#!/bin/bash

mkdir -p /usr/share/vim/vim74/bundle
cp vimrc /usr/share/vim/
rsync -Cr --exclude=".gitkeep" ../Vundle.vim /usr/share/vim/vim74/bundle/Vundle.vim
vim +PluginInstall +qall
