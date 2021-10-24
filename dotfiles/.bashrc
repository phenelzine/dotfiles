#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#a more colourfull 'ls' command
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#the 'fuck' command
#all credit goes to: https://github.com/nvbn/thefuck
eval "$(thefuck --alias)"

#aliases#
alias off='poweroff'
alias logout='openbox -exit'
alias sync='sudo pacman -Syy'
alias update='sudo pacman -Syu'
