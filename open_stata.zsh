
#!/usr/bin/zsh

if [ "$(pgrep -x xstata-se)" = "" ]; then 
	 xstata-se
fi
