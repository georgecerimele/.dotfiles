#!/bin/bash

rm -rf ~/.vimrc #removes vimrc

sed -i 's| source ~/.dotfiles/bashrc_custom| |g' ~/.bashrc #removes line from bashrc file

rm -rdf ~/.TRASH #removes trash directory
