

#
#Extend the Prime Factorization Program to store all the Prime Factors of a number n into an #array and finally display the output.
#

echo ""
echo "Storing Prime factors of a number in an array"
echo ""
echo -n "Enter a number : "
read n
f=1
a=0
declare -a arr


for ((i=2;i<n;i=$((i+1))))
do
	if [[ $((n%i)) -eq 0 ]]; then
		f=$i

		for (( j = 2; j <= $((f/2)); j=$((j+1)) )); do
			check=0
			if [[ $((f%j)) -eq 0 ]]; then
				check=1
				break
			fi
		done
		if [[ $check -eq 0 ]]; then
			arr[a]=$f
			a=$((a+1))
		fi
	fi
done
echo ""
echo "Array of $n's Prime factors : ${arr[*]}"
echo ""