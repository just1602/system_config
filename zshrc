#!/bin/zsh
##################
# zsh config file
##################

# history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

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
#alias mplayer='mplayer2'

## use eix -v
alias eix='eix -v'

## prevent urxvr-unicode256 to breakup ssh
alias ssh='TERM=xterm ssh'

## Set zsh to the vi mod
set -o vi

## Set the default editor
export EDITOR=/usr/bin/vim

## Set the default pager
export PAGER=/usr/bin/less

## Add the jdk path
export PATH=/usr/lib/jvm/java-7-openjdk/bin:$PATH

## Add the android sdk to the path
export PATH=$PATH:/opt/android-sdk

## Add ruby gem to the path
export PATH=$PATH:/home/justin/.gem/ruby/2.1.0/bin
