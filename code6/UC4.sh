read -p "Enter lower: " n
read -p "Enter upper: " m

for (( i=n; i<=m; i++ ))
do
	limit=$((m/2))
	count=0
	for(( j=2; j<=limit; j++ ))
	do
        	div=$(( i%j ))
        if [ $div -eq 0 ]
        then
		count=$(( count+1 ))
	fi
	done
	if [ $count -eq 0 ]
	then
		echo $i
	fi
done
