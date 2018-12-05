#!/bin/bash
path="$1"
exten="*$2"
(find "$path" -maxdepth 1 -type f -name "$exten" | wc -l) 2> /dev/null

if ! [ $? -eq 0 ]
then
  exit -1
fi
