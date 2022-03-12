randomCheck=$((RANDOM%2));
isPresent=1

echo $randomCheck

if [ $randomCheck -eq $isPresent ]
then 
	echo "Employee is present"
else
	echo "Employee is absent"
fi
