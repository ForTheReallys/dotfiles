# Screen captures
bindsym --release Print exec scrot --focused -q 100 -ze 'mv $f ~/Pictures/Screenshots/'
bindsym --release Shift+Print exec scrot -q 100 -ze 'mv $f ~/Pictures/Screenshots/'
# Key captures
bindsym $Super+Print exec $script_dir/screenkey_toggle.sh

# DO NOT CHANGE SYS_REQ. This is required when using the alt key with 'Print'
# rofi screen capture options
bindsym $Alt+Sys_Req exec --no-startup-id "$script_dir/rofi/Capture\ Menu"

# rofi mouse options
bindsym $Alt+Shift+m exec --no-startup-id "$script_dir/rofi/Mouse\ Settings"

# toggle compton's dim feature
bindsym $Alt+Shift+c exec "$script_dir/toggle_window_dim"


# vim: ft=conf:
