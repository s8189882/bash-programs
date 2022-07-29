#!/bin/bash

#
#Write a function to check if the two numbers are Palindromes
#

echo ""
echo "Check for Palindrome Number"
echo "Enter the number : "
read n

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
	echo $reverse
	if [ $number -eq $reverse ]
	then
	    echo "Number is palindrome"
	else
	    echo "Number is not palindrome"
	fi
}
r=`checkPalindrome $n`
echo "$r"
echo ""