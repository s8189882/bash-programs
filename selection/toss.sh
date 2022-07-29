#!/bin/bash

#
#Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.
#
#

toss=$((RANDOM%2))
if [[ ${toss} -eq 0 ]]; then
    echo HEADS
elif [[ ${toss} -eq 1 ]]; then
    echo TAILS
fi