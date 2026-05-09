PRIVATE_FILES := common/.private/shell/common/environment \
								 common/.private/shell/common/functions \
								 common/.private/shell/common/aliases \
								 common/.private/shell/bash/functions \
								 common/.private/shell/bash/environment \
								 common/.private/shell/bash/aliases \
								 common/.private/shell/zsh/aliases \
								 common/.private/shell/zsh/functions \
								 common/.private/shell/zsh/environment \
								 common/.private/nvim \
								 common/.private/tmux

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
	touch $(PRIVATE_FILES)
	sed 's:^$$DOTFILES:$(CURDIR):g' -i common/.cache/fzf/common_files

install: init
	stow -vt ~/ $(PACKAGES)

reinstall: init
	stow -Rvt ~/ $(PACKAGES)

dry: init
	stow -nvt ~/ $(PACKAGES)

uninstall:
	stow -Dvt ~/ $(PACKAGES)
