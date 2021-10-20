#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

#aliases#
alias off='poweroff'
alias logout='openbox -exit'
alias lgbt='neofetch | lolcat'
alias sync='sudo pacman -Syy'
alias update='sudo pacman -Syu'
alias updateaur='yay -Syu'
alias yayrm='yay -Rns'
