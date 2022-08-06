# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Setting the erasedups option and using history -a for every command have some advantages, but in general seem to be more 
# hassle than they are worth due to the loss in readability of the history file. Just appending to the file rather than overwriting
# and using a large history size is a simple solution where I have the full history and the order always makes sense.

# setup unlimited history and appending of bash commands rather than overwriting the history file at the end of the session
HISTSIZE=1000000
HISTFILESIZE=1000000
shopt -s histappend

alias ll='ls -al'

[ -z "$TMUX" ] && (tmux attach || tmux) && exit
set -o vi
export EDITOR=vim
