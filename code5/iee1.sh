read -p "Enter a number from 1 to 7: " n

if (( $n == 1 ))
then
        echo "$n is Monday"

elif (( $n == 2 ))
then
        echo "$n is Tuesday"

elif (( $n == 3 ))
then
        echo "$n is Wednesday"

elif (( $n == 4 ))
then
        echo "$n is Thursday"

elif (( $n == 5 ))
then
        echo "$n is Friday"

elif (( $n == 6 ))
then
        echo "$n is Saturday"

elif (( $n == 7 ))
then
        echo "$n is Sunday"
else
        echo "Number you entred is not valid"
fi


