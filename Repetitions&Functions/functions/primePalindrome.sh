#!/bin/bash

#
#Take a number from user and check if the number is a Prime then show
#that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome.
#c. Check if the Palindrome number is also prime
#

echo ""
echo -n "Enter the number : "
read n
check=1

function checkPalindrome
{
	number=$n
	reverse=0
	while [ $n -gt 0 ]
	do
		a=`expr $n % 10 `
		n=`expr $n / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	echo "Original number : $number"
	echo "Palindrome of the number : $reverse"
	pal=$reverse

	r3=`checkPrime $reverse`
	echo "$r3"
	echo ""


}


function checkPrime()
{
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
}

echo ""
r1=$(checkPrime $n)
echo "$r1"
echo ""
r2=`checkPalindrome $n`
echo "$r2"
echo ""
#r3=$(checkPrime $reverse)
#echo "Palindrome $r3"
#echo ""


