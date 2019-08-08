# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(tmux rails pip cargo)

# User configuration

if [[ "$OSTYPE" == darwin* ]]; then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_CA.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export VISUAL=$EDITOR
export PAGER='less'

# aliases

alias vim='nvim'
alias vimdiff='nvim -d'
alias v='vim -p'

alias p='python'
alias b='bundle exec'

alias c='bat'
alias f='fd'
alias l='exa'
alias ll='l -l'
alias cr='cargo run'
alias cf='cargo-fmt'

alias rb='ruby'

alias diff='diff --color=always -u'
alias serve='python -m http.server'
alias feh='feh -F'

if [[ "$OSTYPE" == linux* ]]; then
    alias xclip='xclip -selection c'
fi


## homebew stuff
if [[ "$OSTYPE" == darwin* ]]; then
    source $HOME/.secret_tokens
fi

eval "$(rbenv init -)"

## Add XDG_HOME_CONFIG for neovim
if [[ "$OSTYPE" == linux* ]]; then
    export XDG_HOME_CONFIG=$HOME/.config
fi

## on osx use open as browser
if [[ "$OSTYPE" == darwin* ]]; then
    export BROWSER='open'
fi

## shell vim bindings
bindkey -v

## enable reverse search
bindkey '^R' history-incremental-search-backward

export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper_lazy.sh

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

1pass ()
{
  if [[ -z $OP_SESSION_my ]]; then
    eval $(op signin my)
  fi

  op get item "$1" | jq -c -r '.details.fields[] | select(.designation=="password").value'
}
