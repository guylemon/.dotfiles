#!/bin/bash
# Creates a tmux
set -e

workDir="${2:-$HOME/hsc}"
workSessionName="${1:-WORK}"
workWindowName="main"

# Create work session and detach.
tmux new-session \
	-s "$workSessionName" \
	-n "$workWindowName" \
	-c "$workDir" \
	-d 

# Create work session splits
tmux split-window -t "$workSessionName:$workWindowName" -h -p 50 -c "$workDir" \; \
	split-window -t "$workSessionName:$workWindowName" -h -p 50 -c "$workDir" \; \
	select-layout -t "$workSessionName:$workWindowName" "even-horizontal" \; \
	select-pane -t "$workSessionName:$workWindowName.1"

# TODO Clear nvm and other startup message output
