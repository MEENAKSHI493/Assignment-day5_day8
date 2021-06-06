#!/bin/bash -x

echo Enter three integers:

arr=()
sum=0

for (( i = 0; i <= 2; i++ )); do
	read arr[i]
	sum=$(( $sum+${arr[i]} ))
done

if [[ $sum -eq 0 ]]; then
	echo "Sum adds to Zero"
else
	echo "Sum doesn't adds to Zero"
fi
