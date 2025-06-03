# Tanvi Jain 
# 31/05/25

#! /cs/local/bin/bash

# collect a list of words from the user
echo -n "Enter a list of words seperated by spaces: "
read input

# count the amount of spaces in the string
count=$(echo "$input" | grep -o " " | wc -l)
count=$((count + 1))
set -- $input
i=1

# make an array for each word
declare -A arr
for word in "$@"; do
	if [[ -n ${arr[$word]} ]]; then
		arr[$word]=$((${arr[$word]} + 1))
	else
		arr[$word]=1
	fi
done

# figure out which word is used the most
most=0
mostWord=""
for key in "${!arr[@]}"; do
	if (( arr[$key] > most )); then
		most=${arr[$key]}
		mostWord=$key
	fi	
done

# print results
echo "Most frequent word: $mostWord"
echo "Occurences: $most"
