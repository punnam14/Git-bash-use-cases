declare -A month
jan=0
feb=0
mar=0
apr=0
may=0
jun=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0
for ((i=1; i<=50; i++))
do
	month[$i]=$((RANDOM%12+1))
  	case ${month[$i]} in 
  	
	1)    
		jan=$(($jan+1)) ;;
  	2)    
		feb=$(($feb+1)) ;;
  	3)    
		mar=$(($mar+1)) ;;
  	4)    
		apr=$(($apr+1)) ;;
  	5)    
		may=$(($may+1)) ;;
  	6)    
		jun=$(($jun+1)) ;;
  	7)    
		jul=$(($jul+1)) ;;
  	8)    
		aug=$(($aug+1)) ;;
  	9)    
		sep=$(($sep+1)) ;;
  	10)   
		oct=$(($oct+1)) ;;
  	11)   
		nov=$(($nov+1)) ;;
  	12)   
		dec=$(($dec+1)) ;;
  	*)    
		echo "Wrong"
  	esac
done
echo "${month*]}"
echo -e "\t$jan - January"
echo -e "\t$feb - February"
echo -e "\t$mar - March"
echo -e "\t$apr - April"
echo -e "\t$may - May"
echo -e "\t$jun - June"
echo -e "\t$jul - July"
echo -e "\t$aug - August"
echo -e "\t$sep - September"
echo -e "\t$oct - October"
echo -e "\t$nov - November"
echo -e "\t$dec - December"
