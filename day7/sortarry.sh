#!/bin/bash

arr=()
1f 
for (( i = 0; i < 10; i++ )); 
do	arr[i]=$((100+RANDOM%809))
done

echo $'\n'Array Contains: ${arr[@]}

#Sorts arr() with integer values (%d - for integers) and stores in arrSorted()
readarray -t arrSorted < <(print '%d\n' "${arr[@]}" | sort  sort -n | tail -2 | head -1 )

echo Second Smalest Number: ${arrSorted[8]}
echo Second Largesest Number: ${arrSorted[1]}
