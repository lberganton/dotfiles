# Get the current working directory of the application running in the focused window.
# This is used for opening a new application in the same path tou are working on.

PTERM=$(xprop -id "$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')" | grep -m 1 PID | cut -d " " -f 3)
PID=$(pstree -lpAT "$PTERM" | grep -o 'yazi([0-9]*)\|nvim([0-9]*)\|bash([0-9]*)' | tail -n 1 | awk -F'[()]' '{print$2}')

if [ -z $PID ]; then
	CWD=~
else
	CWD="$(readlink /proc/"$PID"/cwd)"
fi

echo $CWD
