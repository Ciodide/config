#!/bin/bash

backup () {
    config_dir="$1"
    backup_dir="$2"
    file_list="$3"
    mkdir -p $backup_dir
    for file in $file_list; do
	cp -r $config_dir/$file $backup_dir/
    done
}

#Emacs: $HOME/.emacs.d
echo "Backing up Emacs config ..."
backup "$HOME/.emacs.d" \
       "emacs" \
       "init.el elisp theme"


