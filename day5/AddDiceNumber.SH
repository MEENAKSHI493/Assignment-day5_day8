#Sum to dice number using random numbers
        dice1=$((1+RANDOM%6))
        dice2=$((1+RANDOM%6))
        sum=$((dice1+dice2))
        #The sum of two dice numbers.
echo "please enter the  first dice number"
read a
echo "please enter the second dice number"
read b
result=$(($a+$b))
echo "sum of enterednumber"$result
