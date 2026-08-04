#!/bin/bash

host="example.com"
ports=(22 80 443)
for port in "${ports[@]}"; do
	if nc -z -w1 "$host" $port 2>/dev/null; then
		echo "Port $port is open on $host"
	else
		echo "Port $port is not open on $host"
	fi
done
