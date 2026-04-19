#!/bin/bash

src_pattern="*.txt"
backup_dir="backup"

[ ! -d $backup_dir ] && mkdir $backup_dir
for file in $src_pattern; do
	cp $file $backup_dir
	echo "$file copied to directory $backup_dir"
done

