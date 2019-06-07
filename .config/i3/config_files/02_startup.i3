bar {
	position top
	# i3bar_command ~/.i3/powerline_scripts/i3_powerline.sh &> /dev/null
	# status_command /usr/lib/python3.7/site-packages/powerline/bindings/i3/powerline-i3.py
	# status_command i3status
	# workspace_buttons no
}
# on restart
exec_always --no-startup-id feh --bg-scale ~/.background

# vim: ft=conf:
