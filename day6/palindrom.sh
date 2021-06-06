
#!/bin/bash 

function palindrom
{
	num=$n
	rev=0
	while [ $n -gt 0 ]
	do
		a=$(($n % 10))
		rev=$(($rev * 10 + $a))
                n=$(($n / 10))
	done

	if [ $num -eq $rev ]
	then
	    echo "Number is palindrome"
	else
	    echo "Number is not palindrome"
	fi
}

echo "Enter first number: "
read n

palindrom $n

echo "Enter second number: "
read n

pal $n 
