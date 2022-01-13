# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mihail/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias ..='cd .. && ls'
alias s='startx'
alias ls='ls --color=auto'

# links fix #
unsetopt nomatch

#starship prompt#
eval "$(starship init zsh)"

#random colorscript 
colorscript -r

source /home/mihail/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
