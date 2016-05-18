#!/bin/bash

function fname()
{
    echo $1, $2
    echo "$@"
    echo "$*"
    return 0
}
#funcName arg1 arg2
fname 12 name