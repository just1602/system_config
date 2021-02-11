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
export HISTIGNORE="&:bg:fg:ls:l:history:exit:clear:pwd:v:nvim:vim"
export HISTCONTROL=ignoredups:ignorespace:erasedups
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT="%y/%m/%d %T "

# completions
if [ -f /usr/share/bash_completion/bash_completion ]; then
  . /usr/share/bash_completion/bash_completion
fi

if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
fi

if [ -f ~/.ssh/known_hosts ]; then
	complete -W "`cut -f 1 -d ' ' ~/.ssh/known_hosts | sed -e s/,.*//g | uniq | grep -v "\["`" ssh mosh scp
fi

complete -c man which sudo      # complete commands
complete -A user su             # complete users
bind '"\t":menu-complete'       # nice menu completion on tab

# PS1
rightprompt() { printf "%*s" $((COLUMNS - 3)) "[\A]"; }
case $LOGNAME in  # root is in red
	root) PS1="\[$(tput sc; rightprompt; tput rc)\]\e[31m\u\e[39m@\e[33m\h\e[39m \e[1m\w\e[0m "
		;;
	*) PS1="\[$(tput sc; rightprompt; tput rc)\]\e[34m\u\e[39m@\e[33m\h\e[39m \e[1m\w\e[0m "
		;;
esac

# env
export PATH=${PATH}:~/.local/bin
export LESS="-iF"  # ignore case, exit if fits on screen
export EDITOR=nvim
export COLORTERM=truecolor

# alaises
alias ap='ansible-playbook -i inventory'

alias di='docker images'

alias pc='pass clip -f'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias tm='tmux'
alias ts='tmux new -s'
alias tl='tmux ls'

alias v='nvim'
alias vimdiff='nvim -d'

alias c='bat'
alias f='fd'

alias l='exa'
alias ll='l -l'

alias pod='mpv --no-vid'

alias cr='cargo run'
alias cf='cargo-fmt'
alias ct='cargo test'

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
