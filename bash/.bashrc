# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# File: .bashrc
# Author: Lucas Berganton
# Created: 06/15/2024
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Basic
export EDITOR=nvim
export MANPAGER='nvim +Man!'

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
PROMPT_COMMAND='
git_branch=$(git branch --show-current 2>/dev/null)
git_branch=${git_branch:+ ${git_branch} }
'
PS1='\[\e[32;1m\]\u\[\e[0m\]: \[\e[36m\]\w\[\e[0m\] \[\e[31;1m\]${git_branch}\[\e[0m\] \[\e[90m\]\D{%H:%M}\n\[\e[36m\]>\[\e[0m\] '

### Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias tree='tree --dirsfirst -C'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -Al'
alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias da='du -d1 --apparent-size -h'
alias ip='ip --color=auto'

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

# Colors for 'less'
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_us=$'\e[01;4;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_ue=$'\e[0m'

# Sets 'yy', an yazi alias that can change the working direcotry
[[ -f ~/.config/yazi/yazicwd.sh ]] && . ~/.config/yazi/yazicwd.sh && export -f yy

### Run starship
command -v starship >/dev/null 2>&1 && [ "$TERM" = "xterm-256color" ] && eval "$(starship init bash)"
