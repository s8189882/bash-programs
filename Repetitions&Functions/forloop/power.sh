#!/bin/bash
#
#Write a program that takes a command-line argument n and prints a table of the
#powers of 2 that are less than or equal to 2^n.
#

echo "Displaying powers  of "2" "
echo -n "Enter a number : "
read n
p=1

for ((i=1;i<=n;i=$((i+1))))
do
	p=$((p*2));
	echo "2^$i = $p";
done
echo ""