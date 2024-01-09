#!/bin/zsh
base="/media/srivatsa/Files"
cd $base
result=`ls -d */*/*/ | fzf`

cd "$result"
echo $result
session=$result

tmux new-session -d -s $session

window=0
tmux rename-window t $session:$window -n 'vim'
tmux send-keys -t $session:$window 'vim .' enter

window=1
tmux new-window -t $session:$window -n 'git'

window=2
tmux new-window -t $session:$window -n 'run'

tmux -u attach-session -t $session
