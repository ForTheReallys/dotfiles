#!/bin/bash

# Sorry I couldn't finish this, I had to go...
function list-windows() {
	for i in $(tmux list-windows -F '#I')
	do
		echo -n "$i "
	done
}


