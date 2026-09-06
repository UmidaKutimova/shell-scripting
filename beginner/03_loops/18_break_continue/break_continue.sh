#!/bin/bash

for i in {1..10}; do
	if [ $i -eq 4 ]; then
		continue
	fi
	if [ $i -eq 8 ]; then
		break
	fi
	echo "i = $i"
done
