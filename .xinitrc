#!/bin/sh


# turn off the bell
xset b off

# turn on numlock
numlockx on

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# libinput default settings for the touchpad
touchpad="ETPS/2 Elantech Touchpad"
xinput --set-prop "$touchpad" "libinput Tapping Enabled" 1
xinput --set-prop "$touchpad" "libinput Natural Scrolling Enabled" 0
xinput --set-prop "$touchpad" "libinput Disable While Typing Enabled" 1

# start our window managers
windowmanager=${1:-i3}
case $windowmanager in
    i3|i3wm           ) exec i3;;
    kde               ) exec startkde;;
    xfce|xfce4        ) exec startxfce4;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
