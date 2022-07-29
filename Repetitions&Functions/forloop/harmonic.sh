#!/bin/bash

#
#Write a program that takes a command-line argument n and prints the nth harmonic
#number. Harmonic Number is of the form
# hn = 1/1 + 1/2 + 1/3 + 1/4 + ... + 1/n
#



echo ""
echo "Harmonic number program"
echo -n "Enter a number : "
read n

bcStr='total=0'

for (( i=1 ; i <= n ; i=$((i+1)))) {
    bcStr+=";total+=1/$i"
}

h=$(echo "$bcStr;total"|bc -l)
echo "nth '$n' harmonic number is $h"
echo ""
