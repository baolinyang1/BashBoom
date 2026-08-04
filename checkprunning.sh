#!/bin/bash

process="nginx"
if pgrep -x "$process" > /dev/null; then
	echo "Process $process is running"
else
	echo "Process $process is not running"
	# you can start a running process:
	sudo systemctl start $process
fi

