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
PROMPT_DIRTRIM=3 # Trims the directory name in prompt

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

shopt -s autocd cdspell

# load any private configurations (not shared in my dotfiles)
source ~/.config/shell/environment
source ~/.private/shell/common/environment
source ~/.private/shell/bash/environment

# Load functions
for i in ~/.config/shell/functions/*; do
	source $i
done

# Alias definitions.
source ~/.config/shell/aliases
source ~/.private/shell/common/aliases
source ~/.private/shell/bash/aliases


term_has_color && color_prompt=y
#color_prompt=y # uncomment to force color

PS1='\u@\h:\w'
[ "$color_prompt" = y ] && PS1='\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]'

# if [ -r /usr/share/git/git-prompt.sh ]; then
#   . /usr/share/git/git-prompt.sh
#   GIT_PS1_SHOWDIRTYSTATE=1
#   # GIT_PS1_SHOWSTASHSTATE=1
#   # GIT_PS1_SHOWUNTRACKEDFILES=1
#   GIT_PS1_SHOWCONFLICTSTATE=1
#   GIT_PS1_SHOWCOLORHINTS=1
#   GIT_PS1_SHOWUPSTREAM="verbose git"
#   GIT_PS1_DESCRIBE_STYLE="branch"
#
#   SCM_GIT_SHOW_COMMIT_COUNT=true
#   PS1="$PS1"'$(__git_ps1 " (%s) ")'
# fi
#
PS1="$PS1$ "
unset color_prompt


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

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
source ~/dotfiles/fzf-git.sh/fzf-git.sh

if [ -f /usr/bin/aws_completer ]; then
  complete -C '/usr/bin/aws_completer' aws
fi

PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"

# Load Angular CLI autocompletion.
# source <(ng completion script)

export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
