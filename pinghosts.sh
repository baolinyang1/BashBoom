#!/bin/bash
hosts=("8.8.8.8" "8.8.4.4" "example.com")
for h in "${hosts[@]}"; do
	if ping -c 1 -W 1 "$h" &> /dev/null; then
		echo "$h is up."
	else
		echo "$h is down or unreachable"
	fi
done
