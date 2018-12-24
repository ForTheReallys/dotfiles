# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

[ -r ~/.environment ] && . ~/.environment

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# color prompt if we have it
color_prompt=y

if [ -z "$color_prompt" ]; then
		. ~/.shell/color
		terminal_has_color && color_prompt=y
fi

PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
[ "$color_prompt" = y ] && PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

unset color_prompt

# Alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# Uncomment to search for exe files in the path
#RUN_WINDOWS_CMDS=1

KERNEL_VERSION=$(uname -v)
if [[ $RUN_WINDOWS_CMDS ]] || [[ $version =~ "Microsoft" ]] || [[ $version =~ "Cygwin" ]]; then
	RUN_WINDOWS_CMDS=1
fi

# function definitions
if [[ $RUN_WINDOWS_CMDS -ne 0 ]]; then
	# TODO find other cmd not found handler (usually with the distribution)
	function command_not_found_handle() {
		WIN_CMD="$1".exe
		which "$WIN_CMD" &> /dev/null
		if [[ $? -eq 0 ]]; then
			echo "Using windows executable"
			"$WIN_CMD"
		else
			true
			# call original one
		fi
	}
fi
