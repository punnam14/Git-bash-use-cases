size=10
for(( i=0; i<size; i++))
do
    array[i]=$(( RANDOM%900 + 100))
done
echo "The array is: "
echo "${array[@]}"

array=($(echo ${array[*]}| tr " " "\n"| sort -n))

echo "The sorted array is: "
echo "${array[@]}"

echo "The second largest number: ${array[-2]}"
echo "The second smallest number: ${array[1]}"
