#!/bin/bash
# Runs superdocker in tmux.
set -e

researchSessionName="RESEARCH"
researchWindowName="main"

workSessionName="WORK"
workWindowName="main"

# TODO Ensure that the named session does not already exist.
# if tmux list-windows | grep -q "$windowName"; then
# 	echo "The tmux window $windowName already exists."
# 	exit 1
# fi

# Create research session and detach.
# The research session runs an AI virtual assistant, and opens
# my lynx bookmarks.
# The AI virtual assistant pane is automatically selected.
tmux new-session \
	-s "$researchSessionName" \
	-n "$researchWindowName" \
	-c "$HOME" \
	-d 

# Create work session and detach.
tmux new-session \
	-s "$workSessionName" \
	-n "$workWindowName" \
	-c "$HOME/hsc" \
	-d 

# Create work session splits
tmux split-window -t "$workSessionName:$workWindowName" -h -p 50 -c "$HOME/hsc" \; \
	split-window -t "$workSessionName:$workWindowName" -h -p 50 -c "$HOME/hsc" \; \
	select-layout -t "$workSessionName:$workWindowName" "even-horizontal" \; \
	select-pane -t "$workSessionName:$workWindowName.1"

# # Select the newly created window and run commands.
# # in each pane
# # +--------++--------+
# # |        ||   1    |
# # |   0    ||        |
# # |        ||--------|
# # |        ||   2    |
# # |        ||        |
# # +--------++--------+
# tmux select-window -t "$windowName"
#
# # Pull the latest changes for the currently selected branch
# # in the left-hand pane.
# # tmux select-pane -t 0 && tmux send-keys 'git pull' C-m
# # In the top-right pane, wait a moment for the git operation
# # and then start the services.
# tmux select-pane -t 1 && tmux send-keys \
# 	'echo "Starting docker in five seconds..."; sleep 5; ./run-services.sh' C-m
#
# # In the bottom-right pane, wait a moment for the uishell container to show
# # and then start the ui-shell.
# # TODO use docker to check if the container exists before executing the command.
# tmux select-pane -t 2 && tmux send-keys \
# 	'echo "Starting the ui shell in fifteen seconds..."; sleep 15; ./run-ui-shell.sh' C-m
#
# # Get back to the left-hand pane to run other commands if you wish.
# tmux select-pane -t 0
#
#
#
#
