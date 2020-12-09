
#!/usr/bin/zsh

stata_window="$(xdotool search --name --limit 1 "Stata/(IC|SE|MP)")" 
this_window="$(xdotool getactivewindow)" 
xdotool \
        keyup ctrl shift \
        windowactivate --sync $stata_window \
        type --clearmodifiers 'do ' 
xdotool key --clearmodifiers U007E U002F \
	type --clearmodifiers 't.do'
xdotool	key Return \
        windowactivate --sync $this_window 
        #key --clearmodifiers --delay 100 Escape g g V G Escape 
