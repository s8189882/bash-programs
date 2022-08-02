#!/bin/bash
#
#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets
#made.
#


echo ""
echo "Gambler's Program"
echo "Initialising game ..."
echo "Funds : Rs 100"
n=100; b=0;
r=0; w=0; l=0;

while [[ $n > 0 && $n -ne 200 ]]; do
	echo "Placing a bet ..."
	b=$(($((RANDOM%2))+1))
	if [[ $b -eq 1 ]]; then
		n=$((n+2))
		r=$((r+1))
		w=$((w+1))
		echo "Bet WON! Congratulations. Funds : $n"
		echo ""
	else
		n=$((n-2))
		r=$((r+1))
		l=$((l+1))
		echo "Bet LOST! Better Luck Again. Funds : $n"
		echo ""
	fi
done



echo "Total Number of bets : $r"
echo "Wins : $w     Losses : $l"
echo ""

if [[ $n -eq 200 ]]; then
	echo "Congratulations."
	echo "You won this round."
	echo "Collect your winnings of Rs. 200"
elif [[ $n -eq 0 ]]; then
	echo "You lost this round."
	echo "Please try again."
fi


echo ""