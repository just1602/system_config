# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## options
bind "set bell-style visible"        # don't use sound
bind "set blink-matching-paren on"   # blink on matchin parens
bind "set colored-completion-prefix on"  # colourz!
bind "set colored-stats on"          # colors
bind "set completion-ignore-case on" # ignore case when completing
bind "set completion-map-case on"    # treat - and _ the same
bind "set history-size 10000"      # big history
bind "set menu-complete-display-prefix on"
bind "set show-all-if-ambiguous on"  # show everything
bind "set show-all-if-unmodified on" # show it!
bind "set completion-query-items 0"
bind "set page-completions off"
shopt -s cdspell     # correct minor spelling errors in cd
shopt -s autocd
shopt -s checkhash   # tru the hashtable firse
shopt -s checkjobs   # show jobs status before exiting
shopt -s dirspell    # spelling correction on dir names
shopt -s extglob     # extended globs
shopt -s globstar    # allow to use **
shopt -s histappend  # append to history instead of overwriting it
shopt -s histverify  # don't execute history, show line before
shopt -s nocaseglob  # no case on pathname expansion
shopt -s nocasematch # no case on matching
shopt -s checkwinsize
export HISTIGNORE="&:bg:fg:ls:l:history:exit:clear:pwd:v:nvim:vim"
export HISTCONTROL=ignoredups:ignorespace:erasedups
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="%y/%m/%d %T "

# completions
# complete g as git
if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
  __git_complete g __git_main
fi

if [ -f ~/.ssh/known_hosts ]; then
  complete -W "`cut -f 1 -d ' ' ~/.ssh/known_hosts | sed -e s/,.*//g | uniq | grep -v "\["`" ssh mosh scp
fi

complete -c man which sudo      # complete commands
complete -A user su             # complete users
bind '"\t":menu-complete'       # nice menu completion on tab

# PS1
set_prompt_user_color() {
  if [ "$LOGNAME" = "root" ]; then
    echo "$(tput setaf 1)" # red
  else
    echo "$(tput setaf 4)" # bright blue
  fi
}
set_prompt() {
  bold=$(tput bold)
  yellow=$(tput setaf 3)
  reset=$(tput sgr0)
  user_color=$(set_prompt_user_color)
  PS1="[\A] \[$user_color\]\u\[$reset\]@\[$yellow\]\h\[$reset\] \[$bold\]\w\[$reset\] "
}
PROMPT_COMMAND=set_prompt

# env
export PATH=~/.local/bin:${PATH}
export LESS="-iF"  # ignore case, exit if fits on screen
export EDITOR=nvim
export COLORTERM=truecolor

# ssh-agent
export SSH_AUTH_SOCK=/tmp/ssh-agent.sock
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi

# ruby
eval "$(rbenv init -)"

# alaises
alias ap='ansible-playbook -i inventory'

alias di='docker images'

alias pc='pass clip -f'
alias pwgen='pwgen -s -y -1'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ts='tmux new -s'
alias tl='tmux ls'

alias v='nvim'
alias vimdiff='nvim -d'

alias c='bat'
alias f='fd'

alias l='exa'
alias ll='l -l'

alias pod='mpv --no-vid'

alias ip='ip --color=auto'

alias rb='ruby'
alias b='bundle exec'

alias diff='diff --color=always -u'
alias serve='python -m http.server'
alias feh='feh -F'

alias ta='todo.sh add'
alias tap='todo.sh add pri'
alias te='todo.sh edit'
alias td='todo.sh do'
alias tls='t ls'

alias xclip='xclip -selection c'

alias yl='youtube-dl --audio-format flac'

# custom functions

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

# No arguments: todo.sh list
# with arguments: acts like todo.sh
t ()
{
  if [[ $# -gt 0 ]]; then
    todo.sh "$@"
  else
    todo.sh ls
  fi
}

mkcd() {
  mkdir -p "$1" && builtin cd "$1"
}
