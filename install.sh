#!/usr/bin/env bash

cp rc/vimrc ~/.vimrc

if [ ! -d bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -c 'PluginInstall' -c 'qa!'
