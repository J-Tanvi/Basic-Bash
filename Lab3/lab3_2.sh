# Tanvi Jain
# 30/05/25

#! /cs/local/bin/bash

echo -e
echo "============= g u e s s i n g   g a m e ================"

# create a function to generate a random number from 1-100 inclusive
generate_random_number() {
	num=$(($RANDOM % 100 + 1))
	echo $num
}

# main logic for the game
play_game() {
	# collect the value from the other function
	num=$(generate_random_number)

	# introduce game and collect first guess
	echo -n "Welcome to the Guessing Game! I have selected a number between 1 and 100. Can you guess it? Enter your guess (or type 'exit' to quit): "
	read guess
	local try=1
	valid=false

	# create a loop that won't exit unless guessed or force quit
	while [[ $guess != 'exit' ]]; do
		# ensure the input is valid 
       		 while [[ ! $valid ]]; do
        	        if [[ $guess =~ ^[0-9]+$ ]]; then

				valid=true
			else
				valid=false
				echo "Invalid Input. Try again: " 
				read guess	
        	        fi
			if [[ $guess -gt 0 ]]; then
                                valid=true 
                        else
				valid=false
                                echo "Invalid Input. Try again: "
                                read guess
                        fi
			if [[ !  $guess =~ ^[0-9]*\.?[0-9]+$ ]]; then
                                valid=true
                        else
                                valid=false
                                echo "Invalid Input. Try again: "
                                read guess
                        fi
	        done

		while [[ $guess -ne $num ]]; do
			echo -e
			if [ $guess -lt $num ]; then 
				echo "Too low! Try again."
			elif [ $guess -gt $num ]; then
				echo "Too high! Try again."
			elif [ $guess -eq $num ]; then
				break;
			fi
			try=$((try + 1))
			echo -e
			echo -n "Enter your guess (or type 'exit' to quit): "
			read guess
		done
	done	

	# evaluate if player won or lost
	if [ $guess -eq $num ];then
        	echo "Congratulations! You've guessed the number $num in $try attempts"
	else 
		echo "Can't believe you gave up before guessing...lammmeeee"
		echo "Just so you know, you were $try tries into guessing"
        fi

	
}

# main call to run the game
play_game

echo "================== g o o d b y e ======================"
echo -e
