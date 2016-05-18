#!/bin/bash


while echo ""
do
	if ping 192.168.0.1 -c 1 | grep -q "ttl="
	then 
		./js-local -c config.json
		break
	fi
	sleep 10s
done
