#!/bin/bash
-
read -p "Enter the Number: " n

arr=()
possible=0

for (( i = 1; i <= $n; i++ )); do
	temp=$(($n%$i))
	if [[ $temp -eq 0 ]]; then
		
		#$i is a factor of number n
		#checking if $i is prime or not 
		flag=1
		N=$(($i/2))

		for (( j = 2; j <= N; j++ ))
		do
			if [ $(($i%$j)) == 0 ] 
			then 
				flag=0
				break
			fi
		done

		if [[ $flag -eq 1 ]]
		then
			arr[possible]=$i 
			possible+=1
		fi

	fi
done

echo Prime Factors of $n are: ${arr[@]} 
0+
