#!/bin/sh
i=1
while ["$i" -le 300];do
    echo hello;
    if ["$i" -le 225 ]; then
        i=$ ( ($i+20) )
    elif ["$i" -le 250 ]; then
        i=$ ( ($i+5) )
    else
        i=$ ( ($i+2) )
    fi
done
exit 0