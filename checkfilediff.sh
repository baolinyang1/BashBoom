#!/bin/bash

file1="config.old"
file2="config.new"

if diff -u "$file1" "$file2" > config.diff; then
	echo "No differences found between $file1 and $file2"
else
	echo "Differences were found (see config.diff):"
	cat config.diff
fi
