#!/bin/bash

options=("Show disk usage" "Show uptime" "Quit")
#change the prompt from #? to the text below
PS3="Choose an option: "
#prints all the options and store response only back to REPLY, HAVE TO!
select opt in "${options[@]}"; do
	case $REPLY in 
		1)
			df -h
			;;
		2)
			uptime
			;;
		3)
			echo "Exciting"
			break
			;;
		*)	
			echo "Invalid option"
			;;
	esac
done
