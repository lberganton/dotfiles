#
# ~/.bash_profile
#

export QT_QPA_PLATFORMTHEME=qt5ct

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
