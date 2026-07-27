#!/bin/bash

#Delete a user account
user_to_delete="bob"
if id "$user_to_delete" &> /dev/null; then
	sudo userdel -r "$user_to_delete"
	if [[ $? -eq 0]]; then
		echo "User $user_to_delete has been deleted"
	else
		echo "User delete operation failed"
	fi
else
	echo "User $user_to_delete does not exist"
fi

