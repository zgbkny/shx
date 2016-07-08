#!/bin/bash
echo "------array-----"
array_var=(0 1 2 3 4)
array_var[0]="test0"
index=0
array_var[hjkdfhg]="new_test0"
array_var[5]="test5"
array_var[6]="test6"
echo "print all keys:" ${!array_var[*]} 
echo "print one:" ${array_var[$index]}
echo "print all:" ${array_var[*]}
echo "print all:" ${array_var[@]}
echo "array_var len" ${#array_var[*]}

echo "------dict------"
declare -A fruit_value
fruit_value=([apple]="100 dollars" [orange]="130 dollars")
fruit_value[pear]="14 dollars";
echo "print all value" ${fruit_value[*]}
echo "print all keys:" ${!fruit_value[*]}

# this is add on master