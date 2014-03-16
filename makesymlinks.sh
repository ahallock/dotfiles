#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=$dir/*
script="${0##*/}"
##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
   filename="${file##*/}"
   if [ "$filename" = "$script" ]
   then
	continue;
   fi
   echo "Moving existing $filename in home directory."
   mv ~/.$filename ~/dotfiles_old/
   echo "Creating symlink to $file in home directory."
   ln -s $dir/$filename ~/.$filename
done
