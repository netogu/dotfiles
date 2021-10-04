#!/bin/zsh
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

DIRS=(config local)


for dir in $DIRS; do
 
  for file in ${dir}/* ; do
    echo $file
    if [[ -L ${HOME}/.${file} ]]
    then
      echo "Removing old Symbolic Links..."
      rm ${HOME}/.${file}
    fi

    if [[ -d ${HOME}/.${file} ]]
    then

      echo $file already exists in ${HOME}!

      echo "Creating backup..."
      mv -v ${HOME}/.${file} ${HOME}/.${file}_old
    fi

    echo "Creating Symbolic Links..."
    ln -sv ${PWD}/${file} ${HOME}/.${file}
  done
done
