#! /cs/local/bin/bash

# create first variables
par=$1
i=1

until [ "$par" == "" ]
do
	# count number of parameters
	i=$((i+1))
	par=${!i}
done

# exit if no parameter was provided
if [ $i -lt 2 ]; then
	echo "No arguments provided"
	exit
fi

# collect index from user
echo -n "Please enter an integer: " 
read num

# check if provided number is in range 
if [ $num -gt $i ]; then
	echo "No argument provided at position $num."
else
	par2=${!num}
	echo "The argument at position $num is: $par2"
fi

