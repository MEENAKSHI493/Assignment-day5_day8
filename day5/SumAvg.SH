#Read 5 Digits from user and generates the sum and Averge
read N
i=$1
sum=0
while [[ $i -le $N ]]
do
  #read num
  x=$((10+RANDOM%15))          
  echo "Random Number$i="$x
  sum=$((sum + x))     
  i=$((i + 1))
done
#avg1=$(echo $sum / $N | bc -l);
#echo "scale = 3; $avg1 / 1" | bc -l
echo "Sum of given number:"$sum
Avg=$"(($sum/$N))"
echo "Average of Random number:"$Avg
