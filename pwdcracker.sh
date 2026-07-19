#! /bin/bash

fn=$1
for pw in $ ( strings $fn);
do
	response=$( echo "${pw}" | ./$fn )
	if [[ $response != *denied ]]; then
		echo "Password found: ${pw}"
	fi
done
