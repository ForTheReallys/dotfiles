#!/bin/sh

powerline_dir="/usr/lib/python3.7/site-packages/powerline/bindings/bar/"
home_powerline_dir="$HOME/.i3/powerline_scripts/"

# kill any powerline lemonbar instances on the current $DISPLAY and restart
for i in $(pgrep powerline-lemon)
do
	POWERLINE_DISPLAY=$(grep -z DISPLAY /proc/$i/environ | tr -d '\000')
	POWERLINE_DISPLAY=$(cut -d= -f2 <<< "$POWERLINE_DISPLAY")

	if [ "$POWERLINE_DISPLAY" = "$DISPLAY" ]
	then
		kill $i 2> /dev/null
	fi
done

$home_powerline_dir/powerline-lemonbar.py --i3 -- -f "InconsolataForPowerline Nerd Font"
# for debugging
#$powerline_dir/powerline-bar.py --i3
