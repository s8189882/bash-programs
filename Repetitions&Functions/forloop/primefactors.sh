#!/bin/bash
#
#Write a program to compute Factors of a number N using prime factorization method.
#Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
#O/P -> Print the prime factors of number N.
#


echo ""
echo "Generate Prime factors of a number"
echo -n "Enter a number : "
read n
f=1

echo -n "Prime Factors of $n are : "

for ((i=2;i<n;i=$((i+1))))
do
	if [[ $((n%i)) -eq 0 ]]; then
		f=$i

		for (( j = 2; j <= $((f/2)); j=$((j+1)) )); do
			check=0
			if [[ $((f%j)) -eq 0 ]]; then
				check=1
				break
			fi
		done
		if [[ $check -eq 0 ]]; then
			echo -n " $f "
		fi
	fi
done
echo ""
echo ""