#! /cs/local/bin/bash

# reading the values from a user input
read -a nums
IFS=" "
# display the first number provided
#echo "the first number is: " ${nums[0]}

# find the amount of numbers provided
len=${#nums[@]}

# exit code if exactly two  values aren't inputed
if [ $len -le 1 ]; then
	echo "You should enter two numbers!"
	exit
#otherwise compare numbers 
elif [ $len -ge 3 ]; then
	echo "Too many numbers given, only evaluating the first two..."
elif [ $len -eq 2 ]; then
	echo "evaluating..."
fi

larger=0
smaller=0
if [ ${nums[0]} -eq ${nums[1]} ]; then
	echo -e 
	echo "Numbers are equal!"
	exit
elif [ ${nums[0]} -lt ${nums[1]} ]; then
        echo -e 
	echo "Numbers are not equal! Further calculating"
	larger=${nums[1]}
	smaller=${nums[0]}
else
	echo -e 
	echo "Numbers are not equal! Further calculating"
        larger=${nums[0]}
        smaller=${nums[1]}
fi

# see if the larger value can be perfectly divided by the smaller one
res=$((larger % smaller))
#echo $res
if [ $res -eq 0 ]; then
	quo=$((larger / smaller))
	echo $larger " is " $quo " times " $smaller
else 
	echo "No relation!"
fi
