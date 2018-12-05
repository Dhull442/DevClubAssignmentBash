#!/bin/bash
lim=$(cat "$1" | wc -w)
ans=0
num=0
flag=0
i=0;
while [ $i -lt $lim ];do
	((i++))
	per=$(cut -f "$i" -d ' ' "$1")
	if [[ "$flag" -eq 0 ]]; then
		num=$(echo "$per");
		flag=1;
	else
		ans=$(( ans $per num ));
		flag=0;
	fi
done
echo $ans