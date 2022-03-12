read -p "Enter a number: " n
index=0

for(( i = 2; i * i <= n; ))
do
    if(( n % i == 0))
    then
        array[index++]=$i
        (( n /= i ))
    else
        (( i += 1 ))
    fi
done

array[index]=$n
echo "The prime factors are ${array[@]}"
