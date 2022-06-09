set -o vi
[ -z "$TMUX" ] && (tmux attach || tmux) && exit
