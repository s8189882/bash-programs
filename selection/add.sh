#!/bin/bash -x

read -p "Enter first value : " x;
read -p "Enter second value : " y;
z=$(($x+$y));
printf "$x + $y = $z";
echo "";