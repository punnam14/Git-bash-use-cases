cash=100
betCash=10
wonTimes=0
lostTimes=0

while(( $cash<200 || $cash==0 ))
do
       	Result=$((RANDOM%2))
       	if [ $Result -eq 1 ]
        	then
               	wonTimes=$(($wonTimes + 1))
               	cash=$(($cash + $betCash))
       	else
               	lostTimes=$(($lostTimes + 1))
               	cash=$(($cash - $betCash))
       	fi
done

echo "Final amount is $cash with win streaks of $wonTimes and losing streaks of $lostTimes"
