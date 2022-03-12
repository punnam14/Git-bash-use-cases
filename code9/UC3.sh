randomCheck=$((RANDOM%3));
perHourSalary=20;
workingHour=0;

echo "Status is $randomCheck"

case $randomCheck in
        0)
        echo "is absent";
        workingHour=0;
        ;;
        1)
        echo "is present";
        workingHour=8;
        ;;
        2)
        echo "is part-time";
        workingHour=4;
        ;;
        *)
        echo "not working";
        ;;
esac

salary=$(($workingHour * $perHourSalary));
echo "Employee has earned $salary $ today"
