
echo -n "Enter a number : "
read n
  
echo -n "You entered : "

	case $n in 
		0) echo  "zero " ;;
        	1) echo  "one " ;;
		 2) echo  "two " ;;
        	3) echo  "three " ;;
        	4) echo  "four " ;;
        	5) echo  "five " ;;
        	6) echo  "six " ;;
        	7) echo  "seven " ;;
        	8) echo  "eight " ;;
        	9) echo  "nine " ;;
		*) echo "You did not enter a single digit. Try again.";;
    esac
 
echo ""
