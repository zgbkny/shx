#!/bin/bash
##-----打印出文件的第10行------
count=0
cat $1 | while read line
do
    if [ $count -eq 9 ]
    then 
        echo "${line}"
    fi
    let count++
done

##-----打印出文件的第10行，第二种方法------
awk 'NR == 10' $1

##-----打印出文件的第10行，第三种方法------
sed -n '10p' $1

##-----打印出文件的第10行，第四种方法------
tail -n+10 $1 | head -n1

echo "-------------------------"