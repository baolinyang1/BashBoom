#!/bin/bash

username="baolin"

if id $username &> /dev/null ; then
	echo "User $username exists on the system"
else
	echo "User $username does not exist"

fi
