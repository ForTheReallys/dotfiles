#!/bin/sh

if [ ! -z "$XDG_CONFIG_HOME" ]; then
	CONFIG="$XDG_CONFIG_HOME"
else
	CONFIG=".config"
fi

files_in_danger=".vim
.bash_aliases
.bash_profile
.bashrc
.environment
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
.shell
.tmux
.tmux.conf
.urxvt
.xinitrc
.Xresources
.Xresources.d"

# $1 the warning message
warn() {
	echo "WARNING!! $1" 1>&2
}

error() {
	echo "Error: $1" 1>&2
}

# $1 the prompt
# echoes the answer
yes_no() {
	input=""

	while [ "$input" != "n" ] && [ "$input" != "y" ]; do
		read -p "$1 [y/n] " input
		if [ "$input" != "n" ] && [ "$input" != "y" ]; then
			echo "Please enter [y/n]"
		fi
	done

	echo $input
}

install_command_t() {
	if which ruby && which make; then
		echo "Installing Command-T"
		cd ~/.vim/pack/bundle/start/command-t/ruby/command-t/ext/command-t

		ruby extconf.rb
		make
	fi
}

install_ycm() {
	echo "To install YouCompleteme, run
	cd ~/.vim/pack/bundle/start/YouCompleteMe/
	./install.py [--your-favorite-completers]"
}

main() {
	DIR=$(dirname $0)
	if [ "$DIR" != "." ]; then
		cd $DIR
	fi

	warn "Running this install script will the following files:\n$files_in_danger"
	answer=$(yes_no "Would you like to continue?")
	if [ "$answer" = 'y' ]; then
		setup_links
	fi

	git submodule init
	git submodule update
	echo
	install_command_t
	echo
	install_ycm
}

setup_links() {
	DOTDIR=$PWD
	while read file; do
		LINK_LOCATION=$(basename "$HOME/$file")
		DOTFILE="$DOTDIR/$file"

		if [ ! -d "$LINK_LOCATION" ]; then
			mkdir -pv "$LINK_LOCATION"
		fi
		cd "$LINK_LOCATION"

		ln -vsf "$DOTFILE"
	done << EOF
	$files_in_danger
EOF
}

main
