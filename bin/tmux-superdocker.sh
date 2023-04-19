#!/bin/bash
# Runs superdocker in tmux.
set -e

windowName="${1:-superdocker}"
devEnvPath="${2:-$HOME/hsc/hsc.dev.env}"

# Ensure that the named window does not already exist.
if tmux list-windows | grep -q "$windowName"; then
	echo "The tmux window $windowName already exists."
	exit 1
fi

# Create splits
tmux new-window -n "$windowName" -c "$devEnvPath" \; \
	split-window -h  -c "$devEnvPath" \; \
	split-window -v  -c "$devEnvPath" \; \
	select-pane -t 0

# Select the newly created window and run commands.
# in each pane
# +--------++--------+
# |        ||   1    |
# |   0    ||        |
# |        ||--------|
# |        ||   2    |
# |        ||        |
# +--------++--------+
tmux select-window -t "$windowName"

# Pull the latest changes for the currently selected branch
# in the left-hand pane.
# tmux select-pane -t 0 && tmux send-keys 'git pull' C-m
# In the top-right pane, wait a moment for the git operation
# and then start the services.
tmux select-pane -t 1 && tmux send-keys \
	'echo "Starting docker in five seconds..."; sleep 5; ./run-services.sh' C-m

# In the bottom-right pane, wait a moment for the uishell container to show
# and then start the ui-shell.
# TODO use docker to check if the container exists before executing the command.
tmux select-pane -t 2 && tmux send-keys \
	'echo "Starting the ui shell in fifteen seconds..."; sleep 15; ./run-ui-shell.sh' C-m

# Get back to the left-hand pane to run other commands if you wish.
tmux select-pane -t 0




