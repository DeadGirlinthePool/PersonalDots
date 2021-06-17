# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jasmine/.zshrc'

autoload -Uz compinit
compinit -u
export KEYTIMEOUT=1

# End of lines added by compinstall

# My mess of a ps1
PROMPT='%F{yellow}[%f%F{cyan}%n%f %F{yellow}in%f %F{blue}%1~%F{yellow}]%f %F{red}%#%f %F{green} %f'

# Enable Colors
zmodload zsh/complist
autoload -U colors && colors

# Auto-Complete navigation
zstyle ':completion:*' menu select

# Auto complete includes aliases
setopt COMPLETE_ALIASES

# Attempt to auto complete after sudo
zstyle ':completion::complete*' gain-privileges 1

# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Auto suggest command completion
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

#load aliases
source $HOME/.config/zsh/aliases

#Syntax Highlighting plug in. Apparently needs to be last
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor line)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
