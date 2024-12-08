# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups
# Not having duplicates in the history would be nice coz this would avoid duplicates in the fzf list, but this is not easily achievable.
# Despite my best efforts, I find that there are duplicates in the history and it is unclear why.
# Trying to avoid duplicates in the history is frustrating and unproductive, so avoid spending time on this.

# setup large history and appending of bash commands rather than overwriting the history file at the end of the session
HISTSIZE=10000
HISTFILESIZE=10000
shopt -s histappend

# enter a tmux session if not already in one, close the shell once the tmux session ends 
[ -z "$TMUX" ] && (tmux attach || tmux) && exit

# PS is primary prompt string and is used by the shell to generate the prompt
export PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

# The TZ environment variable is used to establish the local time zone.
export TZ='Asia/Kolkata'

alias ll='ls -hal' 	# ll outputs long form ls in human-readable format
set -o vi			# vi mode for the terminal
export EDITOR=vim
alias vim='~/nvim.appimage'	# neovim as vim
source /usr/share/doc/fzf/examples/key-bindings.bash # key-bindings for fzf
