#!/bin/bash

total_kb=$(grep MemTotal /proc/meminfo | awk '{print $2}')
avail_kb=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

used_kb=$((total_kb - avail_kb ))
if [ "$total_kb" -gt 0 ]; then
	percent=$(( used_kb * 100 / total_kb ))
else
	percent=0
fi
echo "Memory Usage: $percent%"
