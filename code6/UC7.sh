read -p "Enter the exponent of 2: " n

exp=$(( 2**$n ))
m=2;
result=0

for (( i=1; i<=$(( $exp/2 )); i++ ))
do
	result=$(( $m * $i ));
done

while(( $result <= 256 ))
do
	echo "2 raised to $n is $result"
	result=257
done
