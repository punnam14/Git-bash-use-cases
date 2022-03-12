read -p "Enter a single digit number: " n

if (( $n == 1 ))
then 
	echo "$n in words is One"

elif (( $n == 2 ))
then
        echo "$n in words is Two"

elif (( $n == 3 ))
then
        echo "$n in words is Three"

elif (( $n == 4 ))
then
        echo "$n in words is Four"

elif (( $n == 5 ))
then
        echo "$n in words is Five"

elif (( $n == 6 ))
then
        echo "$n in words is Six"

elif (( $n == 7 ))
then
        echo "$n in words is Seven"

elif (( $n == 8 ))
then
        echo "$n in words is Eight"

elif (( $n == 9 ))
then
        echo "$n in words is Nine"

else
	echo "Number you entred is not valid"
fi
