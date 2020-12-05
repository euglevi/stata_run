
#!/usr/bin/zsh

this_window="$(xdotool getactivewindow)" &&

if [ "$(pgrep -x xstata-se)" = "" ]; then 
	 xstata-se
fi

xdotool \
	keyup ctrl shift \
	sleep 1 \
	windowactivate --sync $this_window
