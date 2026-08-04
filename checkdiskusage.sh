#!/bin/bash

threshold=80
used_pct=$(df / | awk 'NR==2 {print $5]' | tr -dc '0-9')

if [ "used_pct" -gt "threshold" ]; then
	echo "Warning: Disk usage is ${used_pct}% (above ${threshold}%) on /"
else 
	echo "Disk usage is ${used_pct}%, under ${threshold}%"
fi

