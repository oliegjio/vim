#!/bin/bash

git submodule update --init --recursive
mkdir -p /usr/share/vim/vim80/bundle
mkdir -p /usr/share/vim/vim80/colors
cp vimrc /etc/vimrc
cp .vimrc /home/archie/.vimrc
cp .vimrc /root/.vimrc
rsync -C --exclude=".gitkeep" bundle/* /usr/share/vim/vim80/bundle/
rsync -C --exclude=".gitkeep" colors/* /usr/share/vim/vim80/colors/
vim +PluginInstall +qall
