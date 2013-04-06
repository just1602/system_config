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

autoload -U colors && colors
#prompt suse

PROMPT="%{$fg[green]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}%# "

# alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
## l = ls
alias l='ls --color=auto'

## use mplayer2 instead of mplayer, but install mplayer for mencoder
alias mplayer='mplayer2'

## use eix -v
alias eix='eix -v'
