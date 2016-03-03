#!/bin/bash
############################
# makelinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
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

# determine if we are running in Linux or Windows
if [ -d ~/.vim ] 
then    
    echo "...Setting things up for Linux"
    os=linux
else
    echo "...Setting things up for Windows"
    os=win
fi

# create symlinks 
for file in $files; do
    
    # for Linux
    if [ $os = "linux"  ]
    then
        if [ $file != "gvimrc" ]
	    then
            echo "Creating symlink to new the $file in $dir"
            ln -s $dir/$file ~/.$file
	    fi
    fi
    
    # for Windows
    if [ $os = "win" ]
    then
    	if [ $file != "vimrc" ]
	    then
            echo "Creating symlink to new new $file in $dir"
            ln -s $dir/$file ~/_$file
	    fi
    fi

done
