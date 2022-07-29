
#
#
#Write a program in the following steps
#a. Generates 10 Random 3 Digit number.
#b. Store this random numbers into a array.
#Extend the above program to sort the array and then find the 2nd largest and the 2nd #smallest element.
#

upper=1000
lower=99
range=$((upper-lower+1))
declare -a arr

echo ""
echo -n "Random Array : "

for ((i=0;i<10;i=$((i+1))))
do
    n=$(($(($RANDOM%$range))+lower))
    echo -n " $n "
    arr[i]=$n

done

echo ""
echo ""
echo "Original array is: ${arr[*]}";

flag=1;
l=${#arr[@]}
for (( i = 0; i < $l; i++ ))
do
    flag=0;
    for ((j = 0; j < $l-$i; j++ ))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done


echo ""
echo "Array in sorted order : ${arr[*]}"
echo ""

echo ""
echo "Second largest number : ${arr[l-1]}"
echo "Seconf smallest number : ${arr[2]}"
echo ""