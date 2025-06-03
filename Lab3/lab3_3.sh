# Tanvi Jain
# 31/05/25

#! /cs/local/bin/bash

# this is assuming the amount of borrowed books is the same as the amount of books available 
# find out how many books have been borrowed
count=$(wc -l < borrowed.txt)

# compare every book
i=1
while [[ 5 -ge $i ]]; do
	# create an array storing each book + their availablity 
	str=$(head -n $i books.txt | tail -n 1)
	str2=$(head -n $i borrowed.txt | tail -n 1)
	bookID=$(echo "$str" | awk -F':' '{print $1}')
	avail=$(echo "$str" | awk -F':' '{print $4}')
	declare -A arr
	arr[$bookID]=$avail

	# compare to the amount of books borrowed
	if [[ "${arr[$bookID]}" -lt "${str2: -1}" ]]; then # the question says less than so not using -le
		echo $(echo "$str" | awk -F':' '{print $2}')
	fi

	# increment the counter
	i=$((i+1))
done 
