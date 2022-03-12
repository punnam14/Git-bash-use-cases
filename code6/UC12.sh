read -p "Enter the First number : " number1
read -p "Enter the Second number : " number2


function palindrome()
	{
	first=$1
	second=$2
	reverse=0
	while(($first > 0))
	do
		modCheck=$(( first%10 ))
		invert=$(( modCheck + $(( invert*10 )) ))
		first=$(( first/10 ))
	done
	if [ $invert -eq $second ]
	then
		echo "The numbers are palindromes"
	else
		echo "They are not palindromes"
	fi
	}

palindrome $number1 $number2
