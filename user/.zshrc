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

# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' disable-patterns "${(b)HOME}/code/portal(|-ee)(|/*)"
zstyle ':vcs_info:*' stagedstr "%F{green}●%f" # default 'S'
zstyle ':vcs_info:*' unstagedstr "%F{red}●%f" # default 'U'
zstyle ':vcs_info:*' use-simple true
zstyle ':vcs_info:git+set-message:*' hooks git-untracked
zstyle ':vcs_info:git*:*' formats '[%b%m%c%u] ' # default ' (%s)-[%b]%c%u-'
zstyle ':vcs_info:git*:*' actionformats '[%b|%a%m%c%u] ' # default ' (%s)-[%b|%a]%c%u-'
zstyle ':vcs_info:hg*:*' formats '[%m%b] '
zstyle ':vcs_info:hg*:*' actionformats '[%b|%a%m] '
zstyle ':vcs_info:hg*:*' branchformat '%b'
zstyle ':vcs_info:hg*:*' get-bookmarks true
zstyle ':vcs_info:hg*:*' get-revision true
zstyle ':vcs_info:hg*:*' get-mq false
zstyle ':vcs_info:hg*+gen-hg-bookmark-string:*' hooks hg-bookmarks
zstyle ':vcs_info:hg*+set-message:*' hooks hg-message

function +vi-hg-bookmarks() {
  emulate -L zsh
  if [[ -n "${hook_com[hg-active-bookmark]}" ]]; then
    hook_com[hg-bookmark-string]="${(Mj:,:)@}"
    ret=1
  fi
}

function +vi-hg-message() {
  emulate -L zsh

  # Suppress hg branch display if we can display a bookmark instead.
  if [[ -n "${hook_com[misc]}" ]]; then
    hook_com[branch]=''
  fi
  return 0
}

function +vi-git-untracked() {
  emulate -L zsh
  if [[ -n $(git ls-files --exclude-standard --others 2> /dev/null) ]]; then
    hook_com[unstaged]+="%F{blue}●%f"
  fi
}

RPROMPT_BASE="\${vcs_info_msg_0_}%F{blue}%~%f"
setopt PROMPT_SUBST

# Anonymous function to avoid leaking variables.
function () {
  # Check for tmux by looking at $TERM, because $TMUX won't be propagated to any
  # nested sudo shells but $TERM will.
  local TMUXING=$([[ "$TERM" =~ "tmux" ]] && echo tmux)
  if [ -n "$TMUXING" -a -n "$TMUX" ]; then
    # In a a tmux session created in a non-root or root shell.
    local LVL=$(($SHLVL - 1))
  else
    # Either in a root shell created inside a non-root tmux session,
    # or not in a tmux session.
    local LVL=$SHLVL
  fi
  if [[ $EUID -eq 0 ]]; then
    local SUFFIX='%F{yellow}%n%f'$(printf '%%F{yellow}\u276f%.0s%%f' {1..$LVL})
  else
    local SUFFIX=$(printf '%%F{red}\u276f%.0s%%f' {1..$LVL})
  fi
  export PS1="%F{green}${SSH_TTY:+%n@%m}%f%B${SSH_TTY:+:}%b%F{blue}%B%1~%b%F{yellow}%B%(1j.*.)%(?..!)%b%f %B${SUFFIX}%b "
  if [[ -n "$TMUXING" ]]; then
    # Outside tmux, ZLE_RPROMPT_INDENT ends up eating the space after PS1, and
    # prompt still gets corrupted even if we add an extra space to compensate.
    export ZLE_RPROMPT_INDENT=0
  fi
}

export RPROMPT=$RPROMPT_BASE
export SPROMPT="zsh: correct %F{red}'%R'%f to %F{red}'%r'%f [%B%Uy%u%bes, %B%Un%u%bo, %B%Ue%u%bdit, %B%Ua%u%bbort]? "

# hooks
autoload -U add-zsh-hook

# Update vcs_info (slow) after any command that probably changed it.
function -maybe-show-vcs-info() {
  local LAST="$(history | tail -1 | awk '{print $2}')"

  # Check first word; via:
  # http://tim.vanwerkhoven.org/post/2012/10/28/ZSH/Bash-string-manipulation
  case "$LAST[(w)1]" in
    cd|cp|git|g|echo|rm|touch|mv|)
      vcs_info
      ;;
    *)
      ;;
  esac
}
add-zsh-hook precmd -maybe-show-vcs-info

## shell vim bindings
bindkey -v
export KEYTIMEOUT=1

## enable reverse search
bindkey '^R' history-incremental-search-backward

# Options
setopt AUTO_PARAM_SLASH
setopt AUTO_CD
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt CORRECT
setopt CORRECT_ALL
setopt NO_FLOW_CONTROL


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

export HISTFILE="$HOME/.zsh_history"

source $HOME/.zsh/aliases

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
