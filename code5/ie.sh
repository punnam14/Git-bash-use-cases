read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Second Number: " c

if [[ $a -ge $b && $a -ge $c ]]
then
	echo "a is the greatest"
elif [[ $b -ge $a && $b -ge $c ]]
then
	echo "b is the greatest"
elif [[ $c -ge $a && $c -ge $b ]]
then
	echo "c is the greatest"
fi

if [[ $a -le $b && $a -le $c ]]
then
        echo "a is the smallest"
elif [[ $b -le $a && $b -le $c ]]
then
        echo "b is the smallest"
elif [[ $c -le $a && $c -le $b ]]
then
        echo "c is the greatest"
fi

