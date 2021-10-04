#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

configdir=~/.config
files="nvim tmux"    # list of files/folders to symlink in homedir

##########
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do

	if [[ -L ~/config/${file}_old ]]
	then
		echo "Removing old Symbolic Links..."
		rm $configdir/$file
	fi

	if [[ -d ~/.config/$file ]]
	then

		echo $file already exists in $configdir!

		echo "Creating backup..."
		mv -v $configdir/$file $configdir/${file}_old
	fi

	echo "Creating Symbolic Links..."
	ln -sv $PWD/$file $configdir/$file

done
