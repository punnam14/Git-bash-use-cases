randomCheck=$((RANDOM%2));
workingHour=20;
isPresent=1;

echo "Status is $randomCheck"

if [ $randomCheck -eq $isPresent ]
then 
	empHour=8
else
	empHour=0
fi

salary=$(($workingHour * $empHour))
echo "Salary earned is $salary"
