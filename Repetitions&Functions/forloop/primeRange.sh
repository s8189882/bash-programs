#!/bin/bash
#
#Extend the program to take a range of number as input and output the Prime
#Numbers in that range.
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

echo ""
echo "Display all Prime Number in a given range"
echo -n "Enter a lowerlimit number : "
read min
echo -n "Enter an upperlimit number : "
read max

for ((i=$min;i<$max;i=$((i+1))))
do
    for (( j = 2; j <= $((i/2)); j=$((j+1)) )); do
        check=0
        if [[ $((i%j)) -eq 0 ]]; then
            check=1
            break
        fi
    done
    if [[ $check -eq 0 ]]; then
        echo -n " $i "
    fi
    
done

echo ""