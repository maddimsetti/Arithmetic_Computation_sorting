#!/bin/bash -x

echo "Sorting Arithmetic Computation Problem"

echo "Enter the three inputs: "
echo "firstInput:a"
echo "secondInput:b"
echo "thirdInput:c"
read a b c

solution1=`echo "$a+$b*$c" | bc`
echo $solution1

solution2=`echo "$a*$b+$c" | bc`
echo $solution2
