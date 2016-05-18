#!/bin/bash
#主要是一些数学计算示例
no1=4;
no2=5
let no1++
echo $no1
let no2++
echo $no2
let no1+=6
echo $no1
let no2+=no1

echo $no2
#let result=no1+no2;
result=$((no1+no2))
result=`expr $no1 + $no2`
result=$(expr $no1 + 5)
#result=$[no1+no2]
echo $result
echo "4 * 0.56" | bc #bc是一个用于数学计算的高级工具
result=`echo "4 * 0.33" | bc`
echo $result