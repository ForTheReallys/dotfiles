PACKAGES ?= alacritty \
						bash \
						cmus \
						common \
						gdb \
						inputrc \
						mpv \
						nvim \
						powerline \
						qutebrowser \
						sway \
						tmux \
						waybar \
						xorg \
						zsh

init:
	sed 's:^$$DOTFILES:$(CURDIR):g' -i common/.cache/fzf/common_files

install: init
	stow -vt ~/ $(PACKAGES)

reinstall: init
	stow -Rvt ~/ $(PACKAGES)

dry:
	stow -nvt ~/ $(PACKAGES)

uninstall:
	stow -Dvt ~/ $(PACKAGES)
