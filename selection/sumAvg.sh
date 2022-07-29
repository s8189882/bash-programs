#!/bin/bash -x

echo "Enter First number: "
read a
echo "Enter Second number: "
read b
echo "Enter Third number: "
read c
echo "Enter Fourth number: "
read d

sum=$((a+b+c+d))
avg=$((sum/4))

echo "Sum of the numbers = $sum"
echo "Average of the numbers = $avg"
