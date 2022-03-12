read -p "Enter day: " day
read -p "Enter month: " month
 
if (($month==3 && (($day>=20 && $day<=31)) ))
then
	echo "Date in march is valid"

elif (( $month==4 && ((1<=$day && $day<=30)) ))
then
	echo "Date in April is valid"

elif (( $month==5 && ((1<=$day && $day<=31)) ))
then
	echo "Date in May is valid"

elif (( $month==6 && ((1<=$day && $day<=20)) ))
then
	echo "Date in June is valid"

else
	echo "Date out of range"
fi

