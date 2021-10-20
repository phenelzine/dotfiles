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
alias lgbt='neofetch | lolcat'
alias sync='sudo pacman -Syy'
alias update='sudo pacman -Syu'
alias updateaur='yay -Syu'
alias yayrm='yay -Rns'
alias clear='clear && colorscript -r'

#random color script#
colorscript -r
