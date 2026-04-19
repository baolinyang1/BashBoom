#!/bin/bash

oldext=".txt"
newext=".bak"
backupdir="backup"
[ ! -d $backupdir ] && mkdir $backupdir
echo "backup dir made"
for file in *$oldext; do
	newname="${file%$oldext}$newext"
	echo "$newname is created"
	mv $file $newname
	cp $newname $backupdir
	echo "back up files copied into the backup directory"
done
