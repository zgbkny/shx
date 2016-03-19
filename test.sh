#!/bin/bash
#ping 192.168.0.1
today=`date +%y%m%d`
ip=192.168.0.1

gg=`ping $ip -c 1 | grep -q \"ttl=\"`
echo $gg
