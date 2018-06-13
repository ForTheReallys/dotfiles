#!/bin/sh

if [[ ! -z $XDG_CONFIG_HOME ]]; then
	CONFIG="$XDG_CONFIG_HOME"
else
	CONFIG=".config"
fi

files_in_danger=".vim
.bash_aliases
.bash_profile
.bashrc
bin/my_tmux
bin/youtube
$CONFIG/cmus/rc
$CONFIG/i3
$CONFIG/mpv/input.conf
$CONFIG/mpv/mpv.conf
$CONFIG/nvim
$CONFIG/powerline
$CONFIG/qutebrowser/config.py
.gdbinit
.gvimrc
.inputrc
.profile
.tmux
.tmux.conf
.urxvt
.xinitrc
.Xresources
.Xresources.d"

# $1 the warning message
function warn() {
	echo -e "WARNING!! $1"
}

# $1 the prompt
# echoes the answer
function yes_no() {
	input=""

	while [[ $input != "n" ]] && [[ $input != "y" ]]
	do
		read -p "$1 [y/n] " input
		if [[ $input != "n" ]] && [[ $input != "y" ]]; then
			echo "Please enter [y/n]"
		fi
	done

	echo $input
}

function install_command_t() {
	echo "Installing Command-T"
	cd ~/.vim/pack/bundle/start/command-t/ruby/command-t/ext/command-t
	ruby extconf.rb
	make
}

function install_ycm() {
	echo "To install YouCompleteme, run
	cd ~/.vim/pack/bundle/start/YouCompleteMe/
	./install.py [--your favorite completers]"
}

function main() {
	warn "Running this install script will the following files:\n $files_in_danger"
	answer=$(yes_no "Would you like to continue?")
	if [[ $answer == 'y' ]]; then
		setup_links
	fi

	git submodule init
	git submodule update
	echo
	install_command_t
	echo
	install_ycm
}

function setup_links() {
	OLDIFS=$IFS
	IFS=$'\n'
	for i in $files_in_danger
	do
		LINK="$HOME/$i"
		DOTFILE="$PWD/$i"
		echo "ln -sf $DOTFILE $LINK"
		ln -sf "$DOTFILE" "$LINK" 2> /dev/null

		# if this fails, try to create the mising directories and try try again
		if [[ $? -ne 0 ]]; then
			DIR="${LINK%/*}"
			echo "Something went wrong, let's see if we can fix it"
			echo mkdir -p "$DIR"
			mkdir -p "$DIR"

			echo "ln -sf $DOTFILE $LINK"
			ln -sf "$DOTFILE" "$LINK"

			if [[ $? -ne 0 ]]; then
				echo "Could not fix the problem, skipping $LINK"
			fi
		fi
	done

	IFS=$OLDIFS
}

main
