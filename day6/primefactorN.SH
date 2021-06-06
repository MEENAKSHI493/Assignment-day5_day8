#!/bin/bash

read -p "Enter the Number: " n

echo "Prime Factors of $n are: "
for (( i = 1; i <= $n; i++ )); do
	tmp=$(($n%$i))
	if [[ $tmp -eq 0 ]]; then
		
		#$i is a factor of number n
		#checking if $i is prime or not 
		flag=1
		limit=$(($i/2))

		for (( j = 2; j <= limit; j++ ))
		do
			if [ $(($i%$j)) == 0 ] 
			then 
				flag=0
				break
			fi
		done

		if [[ $flag -eq 1 ]]
		then
			echo $i
		fi

	fi
done
