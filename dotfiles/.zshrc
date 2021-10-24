#junk#
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
bindkey -v
autoload -Uz compinit
compinit



#starship prompt (credit: https://starship.rs/)#
eval "$(starship init zsh)"

#thefuck command (https://github.com/nvbn/thefuck)#
eval "$(thefuck --alias)"

#aliases#
alias off='poweroff'
alias logout='openbox --exit'
alias sync='sudo pacman -Syy'
alias update='sudo pacman -Syu'
alias updateaur='yay -Syu'




