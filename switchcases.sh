#!/bin/bash

read -sp "Enter a number (1 - 3): " choice

case "$choice" in
	1)
		echo "You selected one"
		;;
	2)	
		echo "You selected two"
		;;
	'*')	
		value=$((3*4))
		echo "you selected mul, returns $value"
		;;
	*)	
		echo "Invalid option"
esac

