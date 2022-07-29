#!/bin/bash
#
#Write a program that takes a input and determines if the number is a prime.
#


echo ""
echo "Check for Prime Number"
echo -n "Enter a number : "
read n
check=1

for ((i=2;i<n;i=$((i+1))))
do
	if [[ $((n%i)) -eq 0 ]]; then
		check=0
	fi
done

if [[ $check -eq 0 ]]; then
	echo "$n is not a prime number."
else
	echo "$n is a prime number."
fi

echo ""