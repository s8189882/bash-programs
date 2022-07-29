

#
#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and #store them in an array
#




echo ""
echo "This program displays numbers with repeated digits with a given range. "
echo ""
echo "Kindly enter a range."
echo -n "Enter the upper limit value : "
read upper
echo -n "Enter the lower imit value : "
read lower

j=0

if [[ $lower -lt 10 ]]; then
	lower=10
fi
for((i=$lower;i<$upper;i=$((i+1))))
do
	num=$i
	d=$((num%10)) 
	flag=0
	while [[ $num -gt 0 ]]; do
		mod=$((num%10))    
	    num=$((num/10)) 
	    if [[ $mod -ne $d ]]; then
	        flag=$((flag+1))
	    fi
	done	


	if [[ flag -eq 0 ]]; then
		arr[j]=$i
		j=$((j+1))
	fi
done
echo ""
echo "Array of repeated numbers : "
echo "${arr[*]}"
echo ""