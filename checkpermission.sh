#!/bin/bash

# check file permissions in one dir
rm */
mkdir -p target
cd target
touch 1.txt 2.txt 3.txt
cd ..

target_dir="target/"

for f in "$target_dir"*; do
    echo "found $f"
    [ -r $f ] && echo "$f has read permission" 
    [ -w $f ] && echo "$f has write permission"
done