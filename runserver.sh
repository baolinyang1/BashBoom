#!/bin/bash

servers=("127.0.0.1" "127.0.1.1")
command="uptime"
for s in "${servers[@]}"; do
	echo "Running '$command' on $s:"
	ssh "$s" "$command"
done
