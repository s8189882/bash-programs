#!/bin/bash
#
#Write a program that takes a command-line argument n and prints a
#table of the powers of 2 that are less than or equal to 2^n till 256 is
#reached..
#

echo "Displaying powers  of "2" "
echo -n "Enter a number : "
read n
p=1

cnt=1;
while [ $cnt -le $n ]
do
	p=$((p*2));
	echo "2^$cnt = $p";
	((cnt++));
done
echo ""