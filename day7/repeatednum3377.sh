
arr=()

echo "\n Required Numbers between 0-100 are: "

for (( i = 0; i <= 100; i++ ));
 do
	if [[ $i -eq 0 ]]; 
then
	
		continue
	fi

	if [[ $(( $i%11 )) -eq 0 ]];  
then
		echo $i" "
	fi

done

echo
