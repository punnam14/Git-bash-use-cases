monthHours=100
totalWorkingDays=20
empRatePerHr=20

totalEmpHr=0
totalEmpDay=0

while [[ $totalEmpDay -lt $totalWorkingDays && $totalEmpHr -lt $monthHours ]]
do
	((totalEmpDay++))
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
        totalEmpHr=$(($empHrs+$totalEmpHr))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))

echo "Total hours is $totalEmpHr"
echo "Total salary for the month is $totalSalary"





