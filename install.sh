#!/bin/bash

mkdir -p /usr/share/vim/vim80/bundle
mkdir -p /usr/share/vim/vim80/colors
cp vimrc /etc/vimrc
rsync -Cr --exclude=".gitkeep" bundle/* /usr/share/vim/vim80/bundle/
rsync -Cr --exclude=".gitkeep" colors/* /usr/share/vim/vim80/colors/
vim +PluginInstall +qall
