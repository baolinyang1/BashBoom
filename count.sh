#!/bin/bash

count_files=$(find . -maxdepth 1 -type f | wc -l)
# notice that this includes the hidden directories!
count_dirs=$(find . -maxdepth 1 -type d | wc -l)
# you can exclude them by using ! -name ".*"
count_real_dirs=$(find . -maxdepth 1 -type d ! -name ".*" | wc -l)
# u can exclude the current dir:
#count_dirs=$((count_dirs-=1))

echo "num of files: $count_files"
echo "num of dirs: $count_dirs"
echo "num of real dirs: $count_real_dirs"
