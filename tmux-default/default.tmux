#!/usr/bin/env bash

# Set tmux title
tmux set -g set-titles on
tmux set -g set-titles-string "tmux - #S - #W"

# Start windows and panes at 1, not 0
tmux set -g base-index 1
tmux setw -g pane-base-index 1

# Enable 256 color & true color
tmux set -g default-terminal "screen-256color"
tmux set -ga terminal-overrides ",xterm-256color:Tc"

# Set message color
tmux set -g message-command-style bg=white,fg=black
tmux set -g message-style bg=white,fg=black

# Set status line format & color
tmux set -g status-style bg=white
tmux set -g status-left-length 16
tmux set -g status-left-style bg=brightblue,fg=black
tmux set -g status-right-length 32
tmux set -g status-right-style bg=brightblue,fg=black
tmux setw -g window-status-current-style bg=brightgreen,fg=black
tmux setw -g window-status-style bg=white,fg=black

# Set timings
tmux set -s escape-time 50

# Enable mouse
tmux set -g mouse on

# Enable control feature by shortcuts
tmux bind-key -r n         next
tmux bind-key -r p         prev
tmux bind-key -r M-n       swap-window -t +1
tmux bind-key -r M-p       swap-window -t -1
