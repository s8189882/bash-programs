#!/bin/bash -x

#
#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.
#


echo -n "Enter the year (YYYY): "
read y
a=`expr $y % 4`;
b=`expr $y % 100`;
c=`expr $y % 400`;
a=$((y%4))
if [$a -eq 0 -a $b -ne - -o $c -eq 0]
then 
	echo "$y is leap year";
else
	echo "$y is not a leap year";
fi