#  find the user given number is palindrom or not ?
 #palindrom number is prime number or not?

#!/bin/bash

echo "Enter number for Palindrome"
read num
s=0
rev=""
temp=$num
# whether the given no. is prime or not
prime()
{
while [ $temp -gt 2 ]
do
for((i=2; i<=$temp/2; i++))
do
  ans=$(( temp%i ))
  if [ $ans -eq 0 ]
  then
    echo "$temp is not a prime number."
    exit 0
  fi
done
done
echo "$temp is a prime number."
}
# the given output is palindrom or not
palindrome()
{
while [ $num -gt 0 ]
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
        echo "Number is palindrome"

else
    echo "Number is NOT palindrome"
while [ $rev -gt 2 ]
do
for((i=2; i<=$rev/2; i++))
do
  ans=$(( rev%i ))
  if [ $ans -eq 0 ]
  then
    echo "Reverse number $rev is not a prime number."
    exit 0
  fi
done
done
echo "Reverse number $rev is a prime number."
fi
}


palindrome "$num"
prime "$num"
