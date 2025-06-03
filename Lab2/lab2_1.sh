#! /cs/local/bin/bash

# Tanvi Jain 
# 220287975
# Lab 2 - EECS 2032

# create a over engineered way to express the time and day
echo ===========================================================================
echo Welcome one and all to the great Date-dini\'s~
echo It is now the time you have all been waiting for...
echo My finest trick: Telling the Time!
echo -e

# get and display the time
time=$(date +%H:%M)
echo The current time is...*drum roll*... $time!!!
echo -e
echo *crowd murmers in shock* 
echo Now now that is not all, for the next part we are going to need a volunteer
echo *hands shoot up*
echo Eager lad in the back, come on up! 
echo Now boy, tell me what is your name \(name the boy\):

# get the name of the user, and the day + hour
read name
day=$(date -d today +%A)
hour=$(date +%H)
# greet the user based on the time of day 
echo -e
if [ $hour -lt 5 ] || [ $hour -gt 21 ]; then
	echo Late night huh, $name. No matter we shall burn the midnight oil!
	sunWhere="Night"
elif [ $hour -lt 12 ]; then
	echo With the morning sun shining, I ask you $name for some help.
	sunWhere="Morning"
elif [ $hour -lt 18 ]; then
	echo A wonderful afternoon $name no?
	sunWhere="Afternoon"
elif [ $hour -lt 22 ]; then
	echo Good evening to you $name!
	sunWhere="Evening"
fi
echo -e

echo Do you know what the day is today $name?
echo *the boy shakes his head no*
echo Step into this box and the answer will be known. 
echo *in a cloud of smoke, a box appears and $name hesitatingly enters*
echo *it shuts behind him*
echo *a few moment later, he emerges*
echo Well boy, share with the class. 
echo *in a trance state, the boy claims...*

echo -e
# show the day
echo \"The day is $day!\"
echo *the crowd errupts in applause, and before they know it, Date-dini is gone*
echo =============================================================================

# get the full date with a time stamp 
dateStamp=$(date +%Y-%m-%d\ %H:%M:%S)

echo $dateStamp "- Happy $sunWhere, $name! Today is $day, and the time is $time" >> .greeting_log
