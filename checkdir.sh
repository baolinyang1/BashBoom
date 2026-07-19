#check the current dir and prints files
# target_dir="./"

# for f in "$target_dir"*; do
# 	echo "found $f"

# done

#!/bin/bash
#gets the real path of the script
script_path="$(realpath -- "$BASH_SOURCE[0]")"
script_dir="$(dirname -- "$script_path")"

for f in "$script_dir"/*; do
	echo found $f
done
