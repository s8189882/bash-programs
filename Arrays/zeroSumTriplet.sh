

#
#Write a Program to show Sum of three Integer adds to ZERO
#

declare -a integerArray
echo -n "Enter the number of integer elements in the array : "
read l
echo "Enter the integer elements : "

for((i=0;i<$l;i++))
do
  read v
  integerArray[$i]="$v"
done

echo -e "Integer Array : ${integerArray[@]}"
echo ""

flag=0

for (( i = 0; i < l-2; i++ )); do
    for (( j = i+1; j < l-1; j++ )); do
        for (( k = j+1; k < l; k++ )); do
            if [[ $((integerArray[i]+integerArray[j]+integerArray[k])) -eq 0 ]]; then
                echo "${integerArray[i]} + ${integerArray[j]} + ${integerArray[k]} = 0"
                flag=$((flag+1))
            fi
        done
    done
done


if [[ flag -eq 0 ]]; then
	echo "No Zero Sum combination triplets exist in this array."
fi
echo ""