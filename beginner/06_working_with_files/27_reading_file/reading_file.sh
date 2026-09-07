#!/bin/bash

echo -e "first line\nsecond line\nthird line" > source.txt
while read -r line; do 
	echo "Line: $line"
done < "source.txt"
