#!/bin/sh

# start and stop screenkey
running=$(pgrep ^screenkey$)

if [ -z "$running" ]; then
	screenkey
else
	killall screenkey
fi
