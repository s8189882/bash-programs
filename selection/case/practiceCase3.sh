echo -n "Enter a number : "
read num
len=$(echo $num | wc -c)
len=$(($len - 1))
echo -n "The place value of $num is in "
case $len in
        1) echo -n "Ones place"
		;;
        2) echo -n "Tens place"
		;;
        3) echo -n "Hundreds place" ;;
        4) echo -n "Thousands place" ;;
        *) echo -n "cannot be determined. Invalid input" ;;
esac
echo ""

for((i=1;i<=len;i++))
do  
        case $len in
                1)
                        echo "Digit at Units place : $num” ;;
                2) 
        		n=$(echo $num |cut -c $i)
                        echo "Digit at tens place : $n"
        		n=$(echo $num |cut -c $i)
                        echo "Digit at units place : $n"
                        ;;
                3) 
        		echo ""
        		n=$(echo $num |cut -c $i)
                        echo "Digit at hundreds place : $n”
        		n=$(echo $num |cut -c $i)
                        echo "Digit at tens place : $n”
        		n=$(echo $num |cut -c $i)
                        echo "Digit at units place : $n”
                        ;;
                4) 
                        echo ""  
        		n=$(echo $num |cut -c $i)
                        echo "Digit at thousands place : $n”
        		n=$(echo $num |cut -c $i)
        		echo "Digit at hundreds place : $n”  
        		n=$(echo $num |cut -c $i)
        		echo "Digit at tens place : $n”  
        		n=$(echo $num |cut -c $i) 
        		echo "Digit at units place : $n”           
                        ;;
        esac
done
echo ""

