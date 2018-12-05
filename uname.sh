#!/bin/bash
username="$1"
file="$2"
(grep "$1" "$2" | cut -f 5 -d ':') 2> /dev/null
if ! [ $? -eq 0 ];then
	exit -1;
fi
