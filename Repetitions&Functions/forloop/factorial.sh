#!/bin/bash
#
#Write a program that computes a factorial of a number taken as input.
#5 Factorial – 5! = 1 * 2 * 3 * 4 * 5
#

echo ""
echo "Program to generate factorial of a number"
echo -n "Enter a number : "
read n
f=1

for ((i=n;i>=1;i=$((i-1))))
do
	f=$((f*i))
done

echo "Factorial of $n = $f";

echo ""