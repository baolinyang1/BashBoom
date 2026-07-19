#!/bin/bash

echo "enter the word to search"
read targte_word
echo "enter the file name"
read filename

if [ ! -f "$filename" ]; then
	echo ""$filename" does not exist"
	exit 1
fi
count=$(grep -o -w "$target_word" "$filename" | wc -l)
echo "the word appeared $count times in $filename"
