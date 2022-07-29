#!/bin/bash -x

randomDice1=$((RANDOM%7));
randomDice2=$((RANDOM%7));
sumOfDice=$((randomDice1+randomDice2));
echo "Random Dice 1 : $randomDice1";
echo "Random Dice 2 : $randomDice2";
echo "Sum of Dices : $sumOfDice";