

#
#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
#

upper=1000
lower=99
declare -a arrayRandom

echo ""
echo -n "Random Array : "

for ((i=0;i<10;i=$((i+1))))
do
	n=$(($(($RANDOM%$upper))+lower))
	echo -n " $n "
	arrayRandom[i]=$n

done

largest=0
secondLargest=0
smallest=100000
secondSmallest=100000


for n in "${arrayRandom[@]}"; do
    if [[ $n -lt $smallest ]]; then
        secondSmallest=$smallest
        smallest=$n
    elif [[ $n -lt $secondSmallest && $n -gt $smallest ]]; then
        secondSmallest=$n
    fi

    if [[ $n -gt $largest ]]; then
        secondLargest=$largest
        largest=$n
    elif [[ $n -gt $secondLargest && $n -lt $largest ]]; then
        secondLargest=$n
    fi
done


echo ""
#echo "Largest number : $largest"
echo "Second largest number: $secondLargest"

echo "Second smallest number: $secondSmallest"
#echo "Smallest number: $smallest"
echo ""

