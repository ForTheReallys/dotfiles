# Installation

To install all my configurations, make sure you have make and stow installed,
and simply run clone this repo and run make.  The Makefile will stow
everything.

To only install a specific configuration, you can run stow directly.  For
example, to only install the tmux configuration, you can run:

```bash
stow -t ~/ tmux
```

NOTE: You MUST use stow to install the common package, as it contains shared
configurations that other configs depend on.  Otherwise, bash or zsh won't play
nicely

