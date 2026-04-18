#!/bin/bash

dir="New_dir"
if [ ! -d $dir ]; then
	mkdir $dir
	echo "directorty $dir created"
else
	echo "directory $dir already exists"
fi

