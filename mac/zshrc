#!/bin/zsh
##################
# zsh config file
##################

# history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/justin/.zshrc'

autoload -Uz compinit
compinit

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

## use eix -v
alias eix='eix -v'

## prevent urxvr-unicode256 to breakup ssh
alias ssh='TERM=xterm ssh'

## tmux antialiasing
alias tmux='tmux -2'

## Set zsh to the vi mod
set -o vi

## Set the default editor
export EDITOR=/usr/bin/vim

## Set the default pager
export PAGER=/usr/bin/less

## Set the default brower
export BROWSER=/usr/bin/firefox

export LESSOPEN="|lesspipe %s"

source /usr/share/zsh/site-contrib/powerline.zsh
