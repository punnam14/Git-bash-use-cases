read -p "Input the year: " year

if (( (($year % 4 == 0)) && (($year % 100 == 0)) && (($year % 400 == 0)) )) 
then
	echo "Year is a Leap Year"
else
	echo "Year is not a Leap Year"
fi
