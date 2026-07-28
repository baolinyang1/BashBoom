#!/bin/bash

output="all_users.txt"
# take the first column of the file /etc/passwd
cut -d: f1 /etc/passwd > "$output"
echo "Saved list of all system usersto $output"
