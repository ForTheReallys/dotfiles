# Spelling mistakes
alias sl=ls
alias cls=clear
alias clclear=clear # I do this more often than you might think
alias mkae='make'
alias vvim='vim'
# run programs with special options
alias gdb='gdb -q'
alias sudo='sudo -E'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias tmux='my_tmux' # this should be in ~/bin
# just for convenience
alias ll='ls -l'
alias la='ls -a'
alias yt='youtube'

# radare aliases (just removed the 2)
alias rabin='rabin2'
alias radare='radare2'
alias radiff='radiff2'
alias rafind='rafind2'
alias ragg='ragg2'
alias rahash='rahash2'
alias rarun='rarun2'
alias rasm='rasm2'
alias rax='rax2'
# Miscellaneous
alias topdf='libreoffice --convert-to pdf'
alias open='rifle' # ranger's file manager

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
fi
