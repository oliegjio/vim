#!/bin/bash

git submodule update --init --recursive
mkdir -p /usr/share/vim/vim80/bundle
mkdir -p /usr/share/vim/vim80/colors
cp -r usr/share/vim/vim80/bundle/Vundle.vim /usr/share/vim/vim80/bundle/Vundle.vim
cp -r usr/share/vim/vim80/colors/bw.vim /usr/share/vim/vim80/colors/bw.vim
cp vimrc /etc/vimrc
cp .vimrc /home/archie/.vimrc
cp .vimrc /root/.vimrc
vim +PluginInstall +qall
