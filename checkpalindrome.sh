#!/bin/bash
read -p "Enter a word: " word
cleaned=$(echo "$word" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')
reverse=$(echo "$cleaned" | rev)

if [ "$cleaned" = "$reverse" ]; then
	echo "$word is a palindrome"
else
	echo "$word is not a palindrome"
fi
