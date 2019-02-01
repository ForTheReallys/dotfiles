# A random font
font pango: Monospace 8

bar {
	position top
	# i3bar_command ~/.i3/powerline_scripts/i3_powerline.sh &> /dev/null
	# status_command /usr/lib/python3.7/site-packages/powerline/bindings/i3/powerline-i3.py
	status_command i3status
}

exec --no-startup-id xrdb ~/.Xresources
exec --no-startup-id compton -b --inactive-dim 0.6 --no-fading-openclose # for transparent backgrounds
exec --no-startup-id i3-msg gaps inner all set 10; i3-msg gaps outer all set 0
# go straight to MY first workspace
exec --no-startup-id i3-msg workspace $work_term

# on restart
exec_always --no-startup-id feh --bg-scale ~/.background

# vim: ft=conf:
