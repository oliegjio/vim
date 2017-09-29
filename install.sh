#!/bin/bash

git submodule update --init --recursive
mkdir -p /usr/share/vim/vim80/bundle
mkdir -p /usr/share/vim/vim80/colors
cp vimrc /etc/vimrc
cp .vimrc /home/archie/.vimrc
cp .vimrc /root/.vimrc
cp -r bundle/* /usr/share/vim/vim80/bundle/
cp -r colors/* /usr/share/vim/vim80/colors/
vim +PluginInstall +qall
