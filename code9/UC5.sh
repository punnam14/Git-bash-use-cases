totalWorkingDays=20
empRatePerHr=20
totalSalary=0  

for (( day=1; day<=$totalWorkingDays; day++))
do
	empCheck=$((RANDOM%3));
		case $empCheck in
			1)
      			empHrs=8
			;;
   			2)
      			empHrs=4
			;;
   			*)
      			empHrs=0
			;;
		esac
	salary=$(($empHrs*$empRatePerHr));
	totalSalary=$(($salary+$totalSalary));
done

echo "Total salary for the day is $salary"
echo "Total salary for the month is $totalSalary"
