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
echo "Backing up Emacs config file(s) ..."
backup "$HOME/.emacs.d" \
       "emacs" \
       "init.el elisp theme"

#Alacritty: $HOME/.config/alacritty/alacritty.yml 
echo "Backing up Alacritty config file(s) ..."
backup "$HOME/.config/alacritty" \
       "alacritty" \
       "alacritty.yml"

#libalpm (pacman): /usr/share/libalpm
echo "Backing up libalpm (pacman) hook(s) ..."
backup "/usr/share/libalpm/hooks" \
       "libalpm/hooks" \
       "91-mkinitcpio-sign.hook"
echo "Backing up libalpm (pacman) script(s) ..."
backup "/usr/share/libalpm/scripts" \
       "libalpm/scripts" \
       "mkinitcpio-sign"

### Xorg Server related
# xinit
echo "Backing up startx(xinit) script(s) ..."
backup "$HOME" \
       "xinit" \
       ".xinitrc"
