# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# File: .bashrc
# Author: Lucas Berganton
# Created: 06/15/2024
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Check window size
shopt -s checkwinsize

# Completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias tree='tree -C'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -Al'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'

# Colored 'Less'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_us=$'\e[01;4;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'

# Prompt
PROMPT_COMMAND='
    git_branch=$(git branch --show-current 2>/dev/null)
    git_branch=${git_branch:+ ${git_branch} }
'
PS1='\[\e[32;1m\]\u\[\e[0m\]: \[\e[36m\]\w\[\e[0m\] \[\e[31;1m\]${git_branch}\[\e[0m\] \[\e[90m\]\D{%H:%M}\n\[\e[36m\]>\[\e[0m\] '

# Starship
command -v starship > /dev/null 2>&1 && eval "$(starship init bash)"
