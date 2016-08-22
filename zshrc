# Path to your oh-my-zsh installation.
if [[ "$OSTYPE" == linux* ]]; then
    export ZSH=/home/justin/.oh-my-zsh
else
    export ZSH=/Users/justin/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git virtualenv tmux python)

if [[ "$OSTYPE" == linux* ]]; then
    plugins+=(archlinux)
else
    plugins+=(osx brew brew-cask)
fi

# User configuration

rubypath=$(ruby -e 'print Gem.user_dir')

if [[ "$OSTYPE" == linux* ]]; then
    export PATH="/usr/local/bin:/usr/local/sbin:${rubypath}/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
else
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi
# export MANPATH="/usr/local/man:$MANPATH"

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

alias vim='nvim'
alias vimdiff='nvim -d'

## homebew stuff
if [[ "$OSTYPE" == darwin* ]]; then
    source $HOME/.secret_tokens
fi

## rvm stuff
if [[ "$OSTYPE" == linux* ]]; then
    export GEM_HOME=${rubypath}
    export GEM_PATH=$GEM_HOME
else
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

## Add XDG_HOME_CONFIG for neovim
if [[ "$OSTYPE" == linux* ]]; then
    export XDG_HOME_CONFIG=$HOME/.config
fi

## on osx use open as browser
if [[ "$OSTYPE" == darwin* ]]; then
    export BROWSER='open'
fi

## markdown-pdf
alias md2pdf='markdown-pdf --css-path ~/Dropbox/pdf.css --paper-format letter'

## vim bindings
bindkey -v

## Meteo
alias meteo='curl wttr.in/Québec'

## http server
alias serve='python -m http.server'

if [[ "$OSTYPE" == linux* ]]; then
    alias xclip='xclip -selection c'
fi

# fzf stuff
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
source /etc/profile.d/fzf-extras.zsh
