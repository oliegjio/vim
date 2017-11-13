#!/bin/bash

mkdir -p /usr/share/vim/vim74/bundle
mkdir -p /usr/share/vim/vim74/colors74
# cp vimrc /etc/vimrc
cp vimrc /usr/share/vim/
rsync -Cr --exclude=".gitkeep" bundle/* /usr/share/vim/vim74/bundle/
rsync -Cr --exclude=".gitkeep" colors/* /usr/share/vim/vim74/colors/
vim +PluginInstall +qall
