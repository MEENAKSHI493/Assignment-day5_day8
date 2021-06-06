
# factorial using for loop

echo "Enter a number"

# Read the number
read N                     

fact=1                    

for((i=2;i<=N;i++))
{
  fact=$((fact * i)) 
}

echo $fact
