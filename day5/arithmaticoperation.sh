#displaymiminmum and maximum value use arithmtic oprerations 

#!/bin/bash 

read -p "Enter first Number: " a
read -p "Enter second Number: " b
read -p "Enter third Number: " c

arr[0]=$((a+b*c))
arr[1]=$((a%b+c))
arr[2]=$((c+a/b))
arr[3]=$((a*b+c))

min=${arr[0]}
max=${arr[0]}

for i in ${arr[@]}
do
     if [[ $i -gt $max ]]
     then
        max=$i
     fi

     if [[ $i -lt $min ]]
     then
        min=$i
     fi
done

echo "The Maximun number is $max"
echo "The Minumun number is $min"
