#!/bin/bash

#identify all types of the current dir

for entry in *; do
	if [ -d $entry ]; then
		echo "$entry/ (directory)"
	else
		echo "$entry (file)"
	fi
done

