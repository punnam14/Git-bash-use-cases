randomCheck=$((RANDOM%2));

if (( $randomCheck==1 ))
then
	echo "$randomCheck gives Heads"
else
	echo "$randomCheck gives Tails"
fi
