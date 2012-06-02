#!/bin/zsh
##################
# zsh config file
##################

autoload -U compinit
compinit

zstyle ':completion:*:descriptions' format '%U%B%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall

autoload -U promptinit
promptinit

#prompt suse

# alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
## l = ls
alias l='ls --color=auto'


## custom prompt ##
PS1=$'\e[0;32m%n\e[0m@\e[1;34m%m\e[1m:\e[0;33m%~\e[0m%# '
