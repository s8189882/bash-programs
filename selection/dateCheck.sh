#!/bin/bash -x

#
#Write a program that takes day and month from the command line and prints true if
#day of month is between March 20 and June 20, false otherwise.
#


read -p " Enter Date:-" Date
read -p " Enter Month:-" Month

if [ $Month -gt 3 -a $Month -lt 6  -a  $Date -le 31 -a $Date -ge 1 ]
then
        echo "True"

elif [ $Month -eq 3 -a $Date -ge 20 -a $Date -le 31 ]
then
        echo "True"

elif [ $Month -eq 6 -a $Date -le 20 -a $Date -ge 1 ]
then
        echo "True"

else
        echo "False! Please Enter date between March 20 and June 20"
fi
echo ""

