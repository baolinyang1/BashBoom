#!/bin/bash

echo "Directories in PATH:"
IFS=':' read -ra dirs <<< "$PATH"
for d in "${dirs[@]}"; do
	echo "$d"
done
