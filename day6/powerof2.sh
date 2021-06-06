# power of 2  upto the given number
read num
i=1
while [[ $i -lt $num ]]
do
        x=$((2**$i))
	if [[ $x -le 256 ]]; then
           echo "$x"
        fi
        i=$(($i+1))
done
