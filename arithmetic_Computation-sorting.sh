#!/bin/bash -x

echo "Sorting Arithmetic Computation Problem"

echo "Enter the three inputs: "
echo "firstInput:a"
echo "secondInput:b"
echo "thirdInput:c"
read a b c

counter=0
solution[((counter++))]=`echo "$a+$b*$c" | bc`
solution[((counter++))]=`echo "$a*$b+$c" | bc`
solution[((counter++))]=`echo "$c+$a/$b" | bc`
solution[((counter++))]=`echo "$a%$b+$c" | bc`

echo ${solution[@]}
echo ${#solution[@]}

for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
        if [ ${solution[j]} -gt ${solution[$((j+1))]} ]
        then
            # swap
            temp=${solution[j]}
            solution[$j]=${solution[$((j+1))]}
            solution[$((j+1))]=$temp
        fi
    done
done

echo "Array in Ascending order: "
echo ${solution[*]}
