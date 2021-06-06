#program gor to display numbers in words
#!/bin/bash -x

read -p "Enter a Number: " num;

case $num in
	1)			echo "One"
				;;
	10)			echo "Ten"
				;;
	100)		echo "Hundred"
				;;
	1000)		echo "Thousand"
				;;
	10000)		echo "Ten Thousand"
				;;
	100000)		echo "Lakh"
				;;
	1000000)	echo "Ten Lakh"
				;;
	*)			echo "Out of Bounds"
				;;
esac
