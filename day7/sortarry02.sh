arr=()
for(( i = 0; i < 10; i++ ));
do
 arr[i]=$((100+RANDOM%809))
done

echo $'\n'Array Contains: ${arr[@]}

#Sorts arr() with integer values (%d - for integers) and stores in arrSorted()
readarray -t arrSorted < <(print '%d\n' "${arr[@]}" |   sort -n | tail -2 |>)

echo Second Smalest Number: ${arrSorted[8]}
echo Second Largesest Number: ${arrSorted[1]}

  
echo "Array in original order"
echo ${arr[*]}
  
# Performing Bubble sort 
for ((i = 0; i<5; i++))
do
      
    for((j = 0; j<5-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}
