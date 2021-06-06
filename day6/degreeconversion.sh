
#!/bin/bash
#Conversion of  Temperature 

function Cel2Fah()
{
	if [ $temp -ge 0 ] && [ $temp -le 100 ]; 
then
		x=`echo | awk "{print (($temp*9/5) + 32)}"`
		echo "Equilavent Fahrenheit: $x"
	else
		echo "Incorrect temperature"
	fi
}

function Fah2Cel()
{
	if [ $temp -ge 32 ] && [ $temp -le 212 ]; 
then
		x=`echo | awk "{print (($temp-32)*5/9)}"`
		echo "Equilavent Celsius: $x"
	else
		echo "Incorrect temperature"
	fi
}

read -p "Enter temperature: " temp

echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius";
read ch 

case $ch in
	1)	Cel2Fah $temp
		;;
	2)	Fah2Cel $temp
		;;
	*) echo "Wrong Input"
esac

echo
