 # coin  to flip print head and tail 
#!/bin/bash -x

toss=$((RANDOM%2))  # using random nubers

if [[ toss -eq 0 ]]; then
	echo "Heads"
else
	echo "Tails"
fi
