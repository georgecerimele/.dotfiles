#!/bin/bash
OS=$(uname)
LINUX="Linux"
if [ $OS != $LINUX ] #checks if linux
then
	echo"Error, OS not Linux" >> linuxsetup.log #error message in file
	exit
else
	mkdir -p ~/.TRASH #makes trash directory
	FILE=~/.vimrc #records file as variable
	if [ -f "$FILE" ] #checks if exists
	then
		mv ~/.vimrc ~/.bup_vimrc #moves if exists
	fi
	cat ~/.dotfiles/etc/vimrc > ~/.vimrc #puts contents of vimrc into .vimrc in home
	printf "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi

