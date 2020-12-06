
#!/usr/bin/zsh


if [ "$(pgrep -x xstata-se)" = "" ]; then 
	this_window="$(xdotool getactivewindow)" &&
	xstata-se
	xdotool \
		keyup ctrl shift \
		sleep 1 \
		windowactivate --sync $this_window
fi

