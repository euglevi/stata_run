
#!/usr/bin/zsh

stata_window="$(xdotool search --name --limit 1 "Stata/(IC|SE|MP)")" 
this_window="$(xdotool getactivewindow)" &&
xdotool \
        keyup ctrl shift \
	sleep 2 \
        windowactivate $stata_window \
        key --clearmodifiers --delay 100 ctrl+v Return \
        windowactivate $this_window
