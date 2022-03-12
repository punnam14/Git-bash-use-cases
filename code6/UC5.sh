read -p "Enter number here: " n
fact=1

for ((i=n; i>0; i--))
do
	((fact *= i ))
done

echo "The factorial of $n is $fact"
