#!/bin/bash

mkdir -p /usr/share/vim/vim80/bundle
cp vimrc /usr/share/vim/
cp vimrc /etc/
rsync -a -Cr --exclude=".gitkeep" ../Vundle.vim /usr/share/vim/vim80/bundle/
vim +PluginInstall +qall
