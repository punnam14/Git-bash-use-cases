echo "Think of a number n between 1 and 100"

min=1
max=100
guess=0
while (( guess == 0))
do
    magicNumber=$(( (min + max) / 2))
    echo "Enter 1,2 or 3 if n is less, equal or greater than $magicNumber"
    read option

    if(( option == 1 ))
    then
        max=$(( magicNumber - 1 ))
    elif (( option == 2 ))
    then
        guess=1
        echo "Your guessed number is $magicNumber"
    elif (( option == 3 ))
    then
        min=$(( magicNumber + 1 )) 
    else
        echo "Continue to enter 1, 2 or 3"
    fi

done
