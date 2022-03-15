heads=0
tails=0
flip=0
total=21
diff=2

while (( 1 ))
do
	((flip++))
	echo "Flip is $flip"
	coin=$(( RANDOM % 2 ))
	if((coin == 0 ))
	then
		echo "Heads"
		(( heads++ ))
	else
		echo "Tails"
		(( tails ++ ))
	fi

	subtract=$(( heads - tails ))
	if(( heads == total && subtract >= diff ))
	then
		echo "Heads has won by $subtract"
		break
	elif(( tails == total && ${subtract#-} >= diff ))
	then
		echo "Tails has won by $subtract"
		break
	fi

done

echo "Heads is $heads and tails is $tails"
