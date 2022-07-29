
#!/bin/bash
#
#Help user find degF or degC based on their Conversion Selection. Use
#Case Statement and ensure that the inputs are within the Freezing Point (
#0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
#a. degF = (degC * 9/5) + 32
#b. degC = (degF – 32) * 5/9
#



echo "Degree Conversion program"
echo "Enter your choice from below"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
 
case $choice in
	1) 
		echo -n "Enter temperature (C) : "
		read c
		f=$(echo "scale=2;((9/5) * $c) + 32" |bc)
		echo "$c C = $f F"
		;;
	2) 
		echo -n "Enter temperature (F) : "
		read f
		c=$(echo "scale=2;(5/9)*($f-32)"|bc)
		echo "$f F = $c C"
		;;
	*) echo "Invalid choice. Please try again." 
		;;
esac

echo ""