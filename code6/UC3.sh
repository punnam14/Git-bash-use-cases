read -p "Enter number: " n

for ((i=2; i<n/2; i++))
do
	div=$((n%i))
	if [[ $div -eq 0 ]]
	then
		echo "$n is not a prime number"
	else
		echo "$n is a prime number"
	fi
done
