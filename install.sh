#!/bin/bash

git submodule update --init --recursive
cp -r usr /usr
cp vimrc /etc/vimrc
cp .vimrc /home/archie/.vimrc
cp .vimrc /root/.vimrc
vim +PluginInstall +qall
