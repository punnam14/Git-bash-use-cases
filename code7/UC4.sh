repeatedNumbers(){
	for(( i=0;i<100;i++ ))
	do
        	a=$(($i % 10))
        	val=$((11 * $a))
        	if(( $i==0 ))
        	then
                	continue
        	elif(( $i==$val ))
        	then
                	arr=("$i" "${arr[@]}")
        	fi
	done
	echo "The numbers are : "
	echo ${arr[*]}
}
repeatedNumbers
