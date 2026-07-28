#!/bin/bash

search_dir="backup"
user="bob"
echo "files under user "$user"
# the print here is optional, find uses it by default anyways
find "$search_dir" -type f -user "$user" -print
