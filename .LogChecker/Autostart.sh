tmux new -d -s Somtoday_Laurens
tmux send-keys -t Somtoday_Laurens "clear" C-m 
tmux send-keys -t Somtoday_Laurens "cd /home/laurens/logs/.LogChecker/Checkers" C-m 
tmux send-keys -t Somtoday_Laurens "sudo python3 Somtoday_Laurens.py" C-m
tmux new -d -s Somtoday_Madelief
tmux send-keys -t Somtoday_Madelief "clear" C-m 
tmux send-keys -t Somtoday_Madelief "cd /home/laurens/logs/.LogChecker/Checkers" C-m 
tmux send-keys -t Somtoday_Madelief "sudo python3 Somtoday_Madelief.py" C-m

