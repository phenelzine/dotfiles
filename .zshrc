# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mihail/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#starship prompt#
eval "$(starship init zsh)"


#thefuck command#
eval "$(thefuck --alias)"

#aliases#
alias off='poweroff'
alias logout='openbox --exit'
alias sync='sudo pacman -Syy'
alias update='sudo pacman -Syu'
alias updateaur='yay -Syu'
alias yayrm='yay -Rns'
alias clear='clear && colorscript -r'
alias weather='curl "wttr.in/nocera-inferiore?0"'
alias wttr='curl "wttr.in/nocera-inferiore?0"'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"'
alias s='startx'
alias rm='rm -i'
alias ..='cd ..'
alias c='clear'

#random color script#
#colorscript -r

#local forecast and time#
curl "wttr.in/your-city?0"
echo " "
date

