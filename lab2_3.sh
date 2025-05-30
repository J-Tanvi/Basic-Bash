#! /cs/local/bin/bash

# create first variables
par=$1
i=1

# set a while loop to keep going until the end of the input
until [ "$par" == "" ]
do
	# skip the second and third word
	if [ $i == 2 ];then
		echo -n "- "
		i=3
        else 
        	echo -n $par "" 
 	fi			
	# move on to the next parameter
	i=$((i+1))
	par=${!i}
done
# new line
echo -e
