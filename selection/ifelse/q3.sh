#

#
#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
#

echo -n "Enter a number : "
read num

echo -n "You entered : "

if [[ $num -eq 1 ]]; then
	echo "One"
elif [[ $num -eq 10 ]]; then
	echo "Ten"
elif [[ $num -eq 100 ]]; then
	echo "Hundred"
elif [[ $num -eq 1000 ]]; then
	echo "Thousand"	
fi

echo ""