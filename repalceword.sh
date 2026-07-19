#!/bin/bash

echo "enter file name"
read filename
#this means edits on the original file directly, but creates a backup first"
sed -i.bak "s/best/best2/g" $filename

echo "replace the word best with best2 in file $filename"

