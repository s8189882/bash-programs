
#
#
#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#Extend the above program to sort the array and then find the 2nd largest and the 2nd #smallest element.
#

upper=999
lower=100
declare -a arrayRandom

echo ""
echo -n "Random Array : "

for ((i=0;i<10;i=$((i+1))))
do
	n=$(($(($RANDOM%$upper))+lower))
	echo -n " $n "
	arrayRandom[i]=$n

done

secondGreatest=$(printf '%s\n' "${arrayRandom[@]}" | sort -n | tail -2 | head -1)

secondSmallest=$(printf '%s\n' "${arrayRandom[@]}" | sort -n | head -2 | tail -1)

echo ""
echo "Second largest number : $secondGreatest"
echo "Seconf smallest number : $secondSmallest"
echo ""
