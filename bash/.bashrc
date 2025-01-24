# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# File: .bashrc
# Author: Lucas Berganton
# Created: 06/15/2024
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Sets 'yy', an yazi alias that can change the working direcotry
[ -f ~/.config/yazi/yazicwd.sh ] && . ~/.config/yazi/yazicwd.sh && export -f yy

# GHCup environment
[ -f "/home/lberganton/.ghcup/env" ] && . "/home/lberganton/.ghcup/env"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Basic
command -v nvim >/dev/null && export EDITOR='nvim' && export MANPAGER='nvim +Man!'

# History
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Shell options
shopt -s checkwinsize
shopt -s histappend

# Completion
[ -f /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

### Prompt
PS1='\[\e[32;1m\]\u\[\e[0m\]: \[\e[36m\]\w\[\e[0m\] \[\e[90m\]\D{%H:%M}\n\[\e[36m\]>\[\e[0m\] '

### Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias tree='tree --dirsfirst -C'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lh'
alias la='ls -A'
alias lla='ls -Alh'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias da='du -d1 --apparent-size -h'
alias ip='ip --color=auto'
alias diff='diff --color=auto'

### Program configurations
# Change terminal title
case ${TERM} in
xterm* | rxvt* | Eterm* | aterm | kterm | gnome* | alacritty | st | konsole*)
  PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
  ;;
screen*)
  PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
  ;;
esac

### Run starship
command -v starship >/dev/null 2>&1 && [[ "$TERM" == xterm-* || "$TERM" == tmux-* ]] && eval "$(starship init bash)"
