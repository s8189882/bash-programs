##!/bin/bash -x

#
#Enter 3 Numbers do following arithmetic operation and find the one that
#is maximum and minimum
#1. a + b * c  3. c + a / b
#2. a % b + c  4. a * b + c
#

echo "Enter First number: "
read a
echo "Enter Second number: "
read b
echo "Enter Third number: "
read c

operation1=$((a+b*c))
operation2=$((a%b+c))
operation3=$((c+a/b))
operation4=$((a*b+c))

echo "a + b * c = $operation1"
echo "a % b + c = $operation2"
echo "c + a / b = $operation3"
echo "a * b + c = $operation4"

max=$a

if [ $b -gt $max ]
then
max=$b
fi
if [ $c -gt $max ]
then
max=$c
fi

echo "The maximum number is : $max"

min=$a

if [ $b -lt $min ]
then
min=$b
fi
if [ $c -lt $min ]
then
min=$c
fi

echo "The minimum number is : $min"

echo ""