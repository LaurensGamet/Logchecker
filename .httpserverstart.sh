tmux new -d -s httpserver
tmux send-keys -t httpserver "clear" C-m
tmux send-keys -t httpserver "cd /home/laurens/logs/" C-m
tmux send-keys -t httpserver "sudo python3 -m http.server" C-m
