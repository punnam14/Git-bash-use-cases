read -p "enter first number: " a 
read -p "enter second number: " b
read -p "enter third number: " c

x=$(($a + $b * $c))
echo $a

y=$(($a * $b + $c))
echo $y

z=$(($c + $a / $b))
echo $z

w=$(($a % $b + $c))
echo $w

declare -A dict

dict[1]=$x
dict[2]=$y
dict[3]=$z
dict[4]=$w

echo "the dictionary is: ${dict[*]}"

array=(${dict[@]})

echo "the array is: ${array[*]}"

IFS=$'\n' sorted=($(sort <<<"${array[*]}")); unset IFS
printf "[%s]\n" "${sorted[@]}"


