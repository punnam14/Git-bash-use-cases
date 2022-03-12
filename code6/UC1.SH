read -p "Enter the power of 2: " n

for ((i=0; i<=n; i++))
do
	echo "$((2**$i))"
done
