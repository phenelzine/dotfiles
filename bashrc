#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#thefuck command#
eval "$(thefuck --alias)"

#aliases#
alias off='poweroff'
alias sync='sudo pacman -Syy'
alias upd='sudo pacman -Syu'
alias updt='yay -Syu'
alias yayrm='yay -Rns'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"'
alias rm='rm -i'
alias c='clear'
alias ..='cd ..'
alias s='startx'

#starship prompt#
eval "$(starship init bash)"

#random colorscript 
colorscript -r
