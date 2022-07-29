#!/bin/bash -x
#
#Write a program that reads 5 Random 3 Digit values and then outputs the minimum
#and the maximum value
#
#

echo -n "Enter Number 1 : "
read a
echo -n "Enter Number 2 : "
read b
echo -n "Enter Number 3 : "
read c

max=$a

if [ $b -gt $max ]
then
max=$b
fi
if [ $c -gt $max ]
then
max=$c
fi

echo " $max is the maximum."
echo ""