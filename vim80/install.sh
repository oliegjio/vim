#!/bin/bash

mkdir -p /usr/share/vim/vim80/bundle
cp vimrc /usr/share/vim/
rsync -a -Cr --exclude=".gitkeep" ../Vundle.vim /usr/share/vim/vim80/bundle/Vundle.vim
vim +PluginInstall +qall
