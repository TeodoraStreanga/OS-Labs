#!/bin/bash

read -p "Enter your name: " NAME
FILE=Hello.txt

if [ "$NAME" != "$USER" ]; then
	echo "This user doesn't exist"
elif [ -f "$FILE" ]; then
	echo "Hello $USER"	
else 
	echo "Hello Streanga Teodora Andrea from IST"
fi
