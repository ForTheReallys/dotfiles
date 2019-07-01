# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
	*i*)
	;;
	*) return;;
esac


HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

shopt -s autocd cdspell

# load any private configurations (not shared in my dotfiles)
[ -r ~/.private/shell/common ] && . ~/.private/shell/common
[ -r ~/.private/shell/bash ]   && . ~/.private/shell/bash

for i in ~/.shell/common/functions/*; do
	[ ! -d ~/.shell/common/functions/$i ] && . $i
done


term_has_color && color_prompt=y
#color_prompt=y # uncomment to force color

PS1='\u@\h:\w\$ '
[ "$color_prompt" = y ] && PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

unset color_prompt

# Alias definitions.
[ -r ~/.shell/common/aliases ] && . ~/.shell/common/aliases


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
			eval $WIN_CMD
		else
			true
			# call original one
		fi
	}
fi
