#!/bin/bash
for f in "./"*.sh; do
	chmod +x $f
done

#or use if [[ $f == *.sh ]]; then
# chmod +x -- "$f"
#fi

