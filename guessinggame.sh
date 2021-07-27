#!/usr/bin/env bash

function guessgame {
	echo "How many files in current director>  "
	read attempt
    filescount=$(ls -1 | wc -l)
}

guessgame

while [[ $attempt -ne $filescount ]]
do
	if [[ $attempt -lt $filescount ]] 
	then
		echo "Go higher"
	else
		echo "Go Lower"
	fi
	guessgame
done

echo "Congratulations!! You're Correct!!"