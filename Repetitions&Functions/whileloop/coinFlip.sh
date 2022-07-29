#!/bin/bash

#
#Extend the Flip Coin problem till either Heads or Tails wins 11 times.
#

count=0
h=0
t=0

while [[ $count<1 ]]; do
	toss=$((RANDOM%2))
	if [[ ${toss} -eq 0 ]]; then
    	echo HEADS
    	h=$((h+1))
	elif [[ ${toss} -eq 1 ]]; then
    	echo TAILS
    	t=$((t+1))
	fi

	if [[ $h -eq 11 ]]; then
		count=1
		echo "Heads 11 times"
	fi
	if [[ $t -eq 11 ]]; then
		count=1
		echo "Tails 11 times"
	fi
done