#!/bin/bash

input="file1.txt"
output="file2.txt"

nl -w3 -s". " "$input" > "$output"
echo "Added line numbers to $input -> $output"
