#!/bin/bash

mkdir -p /usr/share/vim/vim80/bundle

cp vimrc-plugins /etc/vimrc
rsync -a -Cr --exclude=".gitkeep" Vundle.vim /usr/share/vim/vim80/bundle/

vim +PluginInstall +qall

rm /etc/vimrc
cp vimrc-full /etc/vimrc
