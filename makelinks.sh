#!/bin/bash
############################
# makelinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc gvimrc"       # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    
    # for Linux
    if [ -d ~/.vim ]
    then
        if [ $file != "gvimrc" ]
	then
	    echo "Moving any existing dotfiles from ~ to $olddir"
            mv ~/.$file ~/dotfiles_old/
            echo "Creating symlink to $file in home directory."
            ln -s $dir/$file ~/.$file
	fi
    fi
    
	echo "I am in the loop"
	echo $file $dir

    # for Windows
    if [ -d ~/vimfiles ]
    then
    	if [ $file != "vimrc" ]
	then
            echo "Moving any existing _dotfiles from ~ to $olddir"
            mv ~/_$file ~/dotfiles_old/
            echo "Creating symlink to $file in home directory."
            ln -s $dir/$file ~/_$file
	fi
    fi

done
