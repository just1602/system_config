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

prompt gentoo

# alias
alias ls='ls --color=auto'
## l = ls
alias l='ls --color=auto'
alias grep='grep --color=auto'
