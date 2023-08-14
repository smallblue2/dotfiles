#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='vim'
export DOTFILES="$HOME/dotfiles"
PS1='[\u@\h \W]\$ '
