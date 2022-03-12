monthHour=100
totalWorkingDay=20
empRatePerHr=20

totalEmpHr=0
totalEmpDay=0

declare -A dailyWage;

function getWorkHour()
        {
        case $empCheck in
                1)
                empHr=8
                ;;
                2)
                empHr=4
                ;;
                *)
                empHr=0
                ;;
        esac
        echo $empHr
        }

function getEmpWage()
        {
        echo $(($empHr*$empRatePerHr))
        }

while [[ $totalEmpDay -lt $totalWorkingDay && $totalEmpHr -lt $monthHour ]]
do
        ((totalEmpDay++))
        empCheck=$((RANDOM%3));
        empHr="$(getWorkHour $empCheck)"
        totalEmpHr=$(($totalEmpHr + $empHr))
        dailyWage["Day$totalWorkingDays"]="$(getEmpWage $empHr)"
done

totalSalary=$(($totalEmpHr*$empRatePerHr))

echo "Total hours is $totalEmpHr"
echo "Total salary for the month is $totalSalary"
echo "${dailyWage[@]}"
echo ${!dailyWage[@]}
