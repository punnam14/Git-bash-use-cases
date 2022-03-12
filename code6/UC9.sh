heads=0
tails=0

while (( $heads<=10 && $tails<=10 ))
do
	Coin=$((RANDOM%2))
	if [ $Coin -eq 0 ]
	then
		echo "It is a Head"
		(( heads++ ))
	else
		echo "It is a Tail"
		(( tails++ ))
	fi
	echo "Head appeared $heads times and Tails appeared $tails times"
done
