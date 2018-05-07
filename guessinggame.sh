#!/usr/bin/env bash

echo "Guessing game start, please guess how many files are in current directory"

function check {
	echo "Enter number of files in current directory:"
	read check
    files=$(ls -1 | wc -l)
}

check

while [[ $check -ne $files ]]
do
	if [[ $check -gt $files ]] 
	then
		echo "TOO HIGH, guess again"
	else
		echo "TOO LOW, guess again"
	fi
	check
done
echo "Congratualations, you guessed correctly, please view all the files below"  
ls 
