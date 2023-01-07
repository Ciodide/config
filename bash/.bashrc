#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;95mλ\e[0;93m\h \e[0m\w\n\u> '
# root PS1
#PS1='\e[1;31mλ\e[0;95m\h \e[0m\w\nYUKI.N> '

## Bash
# history
export HISTSIZE=7777777
export HISTCONTROL=ignoredups
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# shopt
shopt -s autocd
# completion
set completion-ignore-case on

## OpenSSH
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

## GnuPG 
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

## Path
export PATH="$PATH:$HOME/code/scripts"
