
#!/usr/bin/zsh

stata_window="$(xdotool search --name --limit 1 "Stata/(IC|SE|MP)")" 
this_window="$(xdotool getactivewindow)" 
xdotool \
        keyup ctrl shift \
	sleep 1 \
        windowactivate --sync $stata_window \
        key --clearmodifiers --delay 100 ctrl+v Return \
        windowactivate --sync $this_window \
	sleep 2
       # key --clearmodifiers --delay 100 Escape g g V G Escape 
