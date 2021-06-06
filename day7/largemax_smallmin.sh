
#!/bin/bash

arr=()

for (( i = 0; i < 10; i++ )); 
do
	arr[i]=$((100+RANDOM%809))
done

echo $'\n'Array Contains: ${arr[@]}

firstmax=${arr[0]}
secondmax=${arr[0]}

firstmin=${arr[0]}
secondmin=${arr[0]}


for (( i = 0; i < 10; i++ )); 
do
# For Second Largest
	if (( firstmax < arr[i] ));  
then
		secondmax=$firstmax 
		firstmax=${arr[i]}
	elif (( (arr[i] > secondmax) && (arr[i] != firstmax) )); 
then
		secondmax=${arr[i]}
	fi
# For Second Smallest
	if (( firstmin > arr[i] ));  
then
		secondmin=$firstmin 
		firstmin=${arr[i]}
	elif (( (arr[i] < secondmin) && (arr[i] != firstmin) )); 
then
		secondmin=${arr[i]}
	fi

done

echo Second Largest Number is $secondmax
echo Second Smallest Number is $secondmin
