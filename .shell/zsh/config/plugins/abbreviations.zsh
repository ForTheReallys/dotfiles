if which abbrev-alias &> /dev/null; then
	alias abbrev='abbrev-alias'
else
	alias abbrev='#'
fi

abbrev ss='systemctl start'
abbrev sr='systemctl restart'
abbrev st='systemctl stop'
abbrev gc='git commit'
abbrev gcl='git clone'
abbrev gr='git rebase'
abbrev gs='git status'
abbrev gc='git checkout'
abbrev gst='git stash'
abbrev gb='git branch'
abbrev gl='git log'
abbrev gd='git diff'
