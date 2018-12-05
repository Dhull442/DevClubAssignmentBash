#!/bin/bash
path="$1"
exten="*$2"
find "$path" -maxdepth 1 -type f -name "$exten" | wc -l 