# From bash man page
#
# When  bash  is invoked as an interactive login shell, or as a non-interactive
# shell with the --login option, it first reads and executes  commands from the
# file /etc/profile, if that file exists.  After reading that file, it  looks
# for ~/.bash_profile, ~/.bash_login, and ~/.profile, in that order, and reads
# and executes commands from the first one that exists and is
#
# When an interactive shell that is not a login shell is started, bash reads
# and executes commands from ~/.bashrc, if that file exists
#
# For our use case, we want bash to function the same whether or not it's a login shell

source ~/.profile
source ~/.bashrc
