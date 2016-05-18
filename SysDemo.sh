#!/bin/bash


#----文件查找与文件列表----




#----cat命令----
echo "------------cat test---------------"
#cat hh.sh kk.sh print.sh
echo "kkkkkkkkkkkkkkkkk" | cat - hh.sh #首先cat echo中的内容然后cat hh.sh后的内容
cat -s hh.sh #压缩连续的空白行为1个空白行




#----系统时间----
date
date +%s
echo "给定时间的Unix纪元秒数："
date --date "Tue May 17 05:53:24 PDT 2016" +%s 
echo "给定时间的星期："
date --date "Tue May 17 05:53:24 PDT 2016" +%a 
date --date "Tue May 17 05:53:24 PDT 2016" +%A 
echo "给定时间的月份："
date --date "Tue May 17 05:53:24 PDT 2016" +%b 
date --date "Tue May 17 05:53:24 PDT 2016" +%B 
echo "给定时间的日："
date --date "Tue May 17 05:53:24 PDT 2016" +%d 
date --date "Tue May 17 05:53:24 PDT 2016" +%D 
echo "给定时间的年："
date --date "Tue May 17 05:53:24 PDT 2016" +%y 
date --date "Tue May 17 05:53:24 PDT 2016" +%Y 
echo "给定时间的小时："
date --date "Tue May 17 05:53:24 PDT 2016" +%I 
date --date "Tue May 17 05:53:24 PDT 2016" +%H 
echo "给定时间的分钟："
date --date "Tue May 17 05:53:24 PDT 2016" +%M
echo "给定时间的秒数："
date --date "Tue May 17 05:53:24 PDT 2016" +%S 
date +%S
echo "给定时间的纳数："
date --date "Tue May 17 05:53:24 PDT 2016" +%n
date +%n

test=`date +%S`
echo "test:" $test


#----睡眠----
echo "------------sleep test-------------"
date
echo "sleep 3 seconds..."
sleep 3 #秒数
date

#----录制和回访终端会话