#!/bin/sh

if [ -z $PYTHON_VERSION ]; then
	PYTHON_VERSION=$(python --version | cut -d' ' -f2 | cut -d'.' -f 1-2)
fi

POWERLINE_TMUX_CONF="/usr/lib/python$PYTHON_VERSION/site-packages/powerline/bindings/tmux/powerline.conf"

if [ -f "$POWERLINE_TMUX_CONF" ]; then
	tmux source "$POWERLINE_TMUX_CONF"
fi
