if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $ZPLUG_HOME/init.zsh

zplug "romkatv/powerlevel10k", as:theme, depth:1

zplug load

source ~/dotfiles/fzf-git.sh/fzf-git.sh

[ -r ~/.environment ] && . ~/.environment
[ -r ~/.shell/common/aliases ] && . ~/.shell/common/aliases

# load any private configurations (not shared in my dotfiles)
source ~/.config/shell/environment
source ~/.private/shell/common/environment
source ~/.private/shell/zsh/environment

# Load functions
for i in ~/.config/shell/functions/*; do
	source $i
done

# Alias definitions.
source ~/.config/shell/aliases
source ~/.private/shell/common/aliases
source ~/.private/shell/zsh/aliases


typeset -U path cdpath
path+=($HOME/.local/bin $HOME/.dotnet/tools)

bindkey -v

# History
HISTSIZE=5000
HISTFILE=$ZDOTDIR/history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

setopt nobeep

# Completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=1
zstyle ':completion:*' group-name ''

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
