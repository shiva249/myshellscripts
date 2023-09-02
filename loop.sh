#!/bin/bash
i=1
while true
do
  echo "$i"
  if [ $i -eq 50]
  then
    break
fi
 i = $((i+1))
done

#this script will print upto 50.
-------------------------------------------------------------------------
#continue command is used to skip current iteration of loop and execute next iteration of loop.

#!/bin/bash
for each in 2 3 44 55 99
do
 if [$each -eq 3]
 then
continue
fi
 echo $each
done

#this will skip when each value is 3 and continue the next iteration
-------------------------------------------------------------------------------------------
#guess the number giving three chances.

#!/bin/bash

system_number=$random

for each in 1 2 3
do
 read -p "this is your chance no $each guess number: " user_number
if [$user_number -eq $system_number]
then
 echo "your guess is right"
else
  echo "your guess is wrong"
fi
done
-------------------------------------------------------------------------

#guess the number giving infinity chances. (( ; ; )) for infinity chances.

#!/bin/bash

system_number=$random
no_of_chances=1
for (( ; ;))
do
 read -p "this is your chance no $no_of_chances, guess number: " user_number
if [$user_number -eq $system_number]
then
 echo "your guess is right"
  break
else
  echo "your guess is wrong"
if [ $user_number -ge $system_number]
then
  echo "Please select some lesser value than $user_number"
else
  echo "Please select some higher value than $user_number"
fi
fi
no_of_chances=((no_of_chances+1))
done
