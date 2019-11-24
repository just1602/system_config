# Shell configuration

typeset -A __STYLES

__STYLES[ITALIC_ON]=$'\e[3m'
__STYLES[ITALIC_OFF]=$'\e[23m'

## completion
autoload -U compinit
compinit -u

### Make completion:
### - Try exact (case-sensitive) match first.
### - Then fall back to case-insensitive.
### - Accept abbreviations after . or _ or - (ie. f.b -> foo.bar).
### - Substring complete (ie. bar -> foobar).
zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

### Colorize completions using default `ls` colors.
zstyle ':completion:*' list-colors ''

### Allow completion of ..<Tab> to ../ and beyond.
zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(..) ]] && reply=(..)'


### $CDPATH is overpowered (can allow us to jump to 100s of directories) so tends
### to dominate completion; exclude path-directories from the tag-order so that
### they will only be used as a fallback if no completions are found.
zstyle ':completion:*:complete:(cd|pushd):*' tag-order 'local-directories named-directories'

### Categorize completion suggestions with headings:
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %F{default}%B%{$__STYLES[ITALIC_ON]%}--- %d ---%{$__STYLES[ITALIC_OFF]%}%b%f

### Enable keyboard navigation of completions in menu
### (not just tab/shift-tab but cursor keys as well):
zstyle ':completion:*' menu select

## colors
autoload -U colors
colors

## shell vim bindings
bindkey -v
export KEYTIMEOUT=1

## enable reverse search
bindkey '^R' history-incremental-search-backward

## history config
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE


# User configuration

if [[ "$OSTYPE" == darwin* ]]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi

## add local scripts to the path
export PATH="$HOME/.local/bin:$PATH"

## You may need to manually set your language environment
export LANG=en_CA.UTF-8

## Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export VISUAL=$EDITOR
export PAGER='less'

## Add XDG_HOME_CONFIG for neovim
if [[ "$OSTYPE" == linux* ]]; then
    export XDG_HOME_CONFIG=$HOME/.config
fi

## on osx use open as browser
if [[ "$OSTYPE" == darwin* ]]; then
    export BROWSER='open'
fi

# aliases

alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'

alias v='nvim'
alias vimdiff='nvim -d'

alias p='python'

alias c='bat'
alias f='fd'

alias l='exa'
alias ll='l -l'

alias cr='cargo run'
alias cf='cargo-fmt'
alias ct='cargo test'

alias rb='ruby'
alias b='bundle exec'

alias diff='diff --color=always -u'
alias serve='python -m http.server'
alias feh='feh -F'

alias td='todo.sh do'
alias tls='todo.sh ls'

if [[ "$OSTYPE" == linux* ]]; then
    alias xclip='xclip -selection c'
fi


# custom functions

mkcd ()
{
    mkdir -p "$1" && builtin cd "$1"
}

# No arguments: `git status`
# With arguments: acts like `git`
g ()
{
    if [[ $# -gt 0 ]]; then
      git "$@"
    else
      git st
    fi
}
compdef g=git

# No arguments: `t ls`
# with arguments acts like `t`
t ()
{
  if [[ $# -gt 0 ]]; then
    todo.sh "$@"
  else
    todo.sh ls
  fi
}
compdef t=todo.sh

1pass ()
{
  if [[ $# -eq 0 ]]; then
    echo "Usage : $0 <password name> [vault name]"
    return 1
  fi

  if [[ -z $OP_SESSION_my ]]; then
    eval $(op signin my)
  fi

  if [[ $# -eq 1 ]]; then
    op get item "$1" | parse1pass
  elif [[ $# -eq 2 ]]; then
    op get item "$1" --vault="$2" | parse1pass
  else
    echo "Usage : $0 <password name> [vault name]"
    return 1
  fi
}

# external import

## homebew stuff
if [[ "$OSTYPE" == darwin* ]]; then
    source $HOME/.secret_tokens
fi

## virtualenvwrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
source $(which virtualenvwrapper_lazy.sh)

eval "$(rbenv init -)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
