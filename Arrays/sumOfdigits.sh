echo -n "Enter a number :"
read n

sum=0


while [[ (($n -lt 0)) -o (($sum -gt 9)) ]]; do
    if [[ $n -eq 0 ]]; then
        n=$sum
        sum=0
    fi

    mod=$((num%10))    
    sum=$((sum+mod))  
    num=$((num/10)) 
done














echo $sum