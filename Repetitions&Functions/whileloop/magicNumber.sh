#!/bin/bash
#
#Find the Magic Number
#a. Ask the user to think of a number n between 1 to 100
#b. Then check with the user if the number is less then n/2 or greater
#c. Repeat till the Magic Number is reached..
#
#


echo ""
echo "Program to find Magic number"
echo -n "Enter a number : "
read num
n=$num
sum=0

while [[ $n > 0 || $sum > 9 ]]; do
	if [[ $n -eq 0 ]]; then
		n=$sum
		sum=0
	fi
	sum=$((sum+$((n%10))))
	n=$((n/10))
done



if [[ $sum -eq 1 || $sum -eq 10 ]]; then
	echo "$num is a Magic Number."
	echo "Sum = $sum"
else
	echo "$num is not a Magic Number."
	echo "Sum = $sum"

fi
echo ""