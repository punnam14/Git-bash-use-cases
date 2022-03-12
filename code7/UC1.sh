findMax()
	{
	max1=0
	max2=0

	for x in "${array[@]}"
	do
		if (( x>max1 ))
		then
			max2=$max1
			max1=$x
		elif (( x>max2 && x!=max1))
		then
			max2=$x
		fi
	done
	echo "Second largest number: $max2"
	}
findMin()
	{
	min1=1000
	min2=1000

	for x in "${array[@]}"
	do
        if (( x < min1 ))
        then
            min2=$min1
            min1=$x
        elif (( x<min2 && x!=min1))
        then
            min2=$x
        fi
	done
	echo "Second smallest number: $min2"
	}

size=10
for ((i=0; i<size; i++))
do
	array[i]=$(( RANDOM % 900 + 100 ))
done


echo "Input 10 random 3 digit numbers" 
echo "${array[@]}"
findMax "${array[@]}"
findMin "${array[@]}"
