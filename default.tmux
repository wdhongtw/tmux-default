#!/usr/bin/env bash

# Start windows and panes at 1, not 0
tmux set -g base-index 1
tmux setw -g pane-base-index 1

# Set timings
tmux set -s escape-time 50

# Enable mouse
tmux set -g mouse on

# Enable control feature by shortcuts
tmux bind-key -r n         next
tmux bind-key -r p         prev
tmux bind-key -r M-n       swap-window -t +1
tmux bind-key -r M-p       swap-window -t -1
