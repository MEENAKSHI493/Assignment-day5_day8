


echo enter  a and b
read a b
for m in $(seq $a $b)
do
    x=0
    for i in $(seq 2 $(expr $m - 1))
    do 
        if [ $(expr $m % $i) -eq 0 ]
        then
            x=1
            break
        fi
    done
    if [ $x -eq 0 ]
    then
    echo $m
    fi
done
