#!/bin/bash
dst="$HOME/codes/public_config"

backup () {
    config_dir="$1"
    backup_dir="$dst/$2"
    file_list="$3"
    mkdir -p $dst/$backup_dir
    for file in $file_list; do
	cp -r $config_dir/$file $backup_dir/
    done
}

#Emacs: $HOME/.emacs.d
echo "Backing up Emacs config file(s) ..."
backup "$HOME/.emacs.d" \
       "emacs" \
       "init.el elisp theme snippets"

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

# Bash: $HOME/.bash_profile $HOME/.bashrc
echo "Backing up bash script(s) ..."
backup "$HOME" \
       "bash" \
       ".bash_profile .bashrc"

### Xorg Server related
# xinit
echo "Backing up startx(xinit) script(s) ..."
backup "$HOME" \
       "xinit" \
       ".xinitrc"

# GTK
# gtk2: $HOME/.gtkrc-2.0
echo "Backing up gtk2 config file(s) ..."
backup "$HOME" \
       "gtk/gtk2" \
       ".gtkrc-2.0" 
# gtk3: $HOME/.config/gtk-3.0/settings.ini
echo "Backing up gtk3 config file(s) ..."
backup "$HOME/.config/gtk-3.0" \
       "gtk/gtk3" \
       "settings.ini"

#Xmonad: $HOME/.xmonad/
echo "Backing up xmonad config file(s)..."
backup "$HOME/.xmonad/" \
       "xmonad" \
       "xmonad.hs"
