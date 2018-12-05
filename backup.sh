#!/bin/bash
dir1="$1"
dir2="$2"
cp -nr "$dir1"/* "$dir2"
cp -nr "$dir2"/* "$dir1"
diff -qr "$dir1" "$dir2"