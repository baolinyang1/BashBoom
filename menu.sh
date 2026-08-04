#!/bin/bash

choice=0
while [ "choice" != "3" ]; do
	echo "Main menu:"
	echo "1) Show date and time"
	echo "2) List files in current directoty"
	echo "3) Exit"
	read -p "Enter your choice [1-3]: " choice
	case "$choice" in
		1)
			echo "Current date and time: $(date)"
			;;
		2) 
			echo "Files in $(pwd):"
			ls -l 
			;;
		3)
			echo "Goodbye!"
			;;
		*)	
			echo "Invalid choice, please select 1-3."
			;;
	esac

	echo
done
