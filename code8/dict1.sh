count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

declare -A dice
i=1

while [ true ]
do

dice[$i]=$(( RANDOM%6+1 ))

if [ ${dice[$i]} -eq 1 ]
then
	one=$(($count1+1)) 
	if [ $count1 -eq 10 ]
	then
	echo "1 occured maximum times"
	break
	fi

 	elif [ ${dice[$i]} -eq 2 ]
	then
	two=$(($count2+1))
	if [ $count2 -eq 10 ]
	then
	echo "2 occured maximum times"
	break
	fi

 	elif [ ${dice[$i]} -eq 3 ]
 	then
	three=$(($count3+1))
	if [ $count3 -eq 10 ]
   	then
       	echo "3 occured maximum times"
       	break
   	fi

 	elif [ ${dice[$i]} -eq 4 ]
 	then
   	four=$(($count4+1))
   	if [ $count4 -eq 10 ]
   	then
       	echo "4 occured maximum times"
       	break
   	fi

 	elif [ ${dice[$i]} -eq 5 ]
 	then
   	five=$(($count5+1))
   	if [ $count5 -eq 10 ]
   	then
       	echo "5 occured maximum times"
       	break
   	fi

 	elif [ ${dice[$i]} -eq 6 ]
 	then
   	six=$(($count6+1))
   	if [ $count6 -eq 10 ]
   	then
       	echo "6 occured maximum times"
       	break
   	fi

 	else
   	echo "Wrong"
 	fi
	((i++))
	done

diceCount=( $one $two $three $four $five $six )

min=0 
max=0

for i in ${diceCount[@]}
do
    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i
done

if [ $min -eq $count1 ]
then
    echo "1 occured minumum times" 

elif [ $min -eq $count2 ]
then
    echo "2 occured minumum times"

elif [ $min -eq $count3 ]
then
    echo "3 occured minumum times"

elif [ $min -eq $count4 ]
then
    echo "4 occured minumum times"

elif [ $min -eq $count5 ]
then
    echo "5 occured minumum times"

elif [ $min -eq $count6 ]
then
    echo "6 occured minumum times"

else
    echo "try again"
fi

echo "${dice[*]}"
echo "One : $count1"
echo "Two : $count2"
echo "Three : $count3"
echo "Four : $count4"
echo "Five : $count5"
echo "Six : $count6"
