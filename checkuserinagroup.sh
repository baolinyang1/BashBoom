#!/bin/bash

#check if a user belong to group
group="bob"
username="bob"
#-nG prints all the groups the user belong to
if id -nG "$username" 2>/dev/null | grep -qw "$group"; then
	echo "Yes, user '$username' is in group '$group'."
else
	echo "No, user '$username' does not belong to the '$group'"
fi
