
#!/usr/bin/zsh

stata_window="$(xdotool search --name --limit 1 "Stata/(IC|SE|MP)")" 
this_window="$(xdotool getactivewindow)" 
xdotool \
        keyup ctrl shift \
        windowactivate --sync $stata_window \
        type --clearmodifiers --delay 10 'do ~/vim_stata.do' \
	key --clearmodifiers --delay 100 Enter \
        windowactivate --sync $this_window 
        #key --clearmodifiers --delay 100 Escape g g V G Escape 
