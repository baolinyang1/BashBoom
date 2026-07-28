#!/bin/bash

group="bobgroup"
user="bob"

if id "$user" &> /dev/null; then
	sudo usermod -aG $group $user
	if [[ $? -eq 0 ]]; then
		echo "added $user to $group"
	else
		echo "failed to add $user to $group"
	fi
else
	echo "$user does not exist"
fi

