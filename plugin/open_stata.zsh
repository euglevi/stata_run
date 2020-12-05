
#!/usr/bin/zsh

this_window="$(xdotool getactivewindow)" &&

if [ "$(pgrep -x xstata-se)" = "" ]; then 
	 xstata-se
fi

xdotool windowactivate --sync $this_window
