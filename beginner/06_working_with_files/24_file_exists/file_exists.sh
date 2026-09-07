#!/bin/bash

touch test.txt
if [ -f "test.txt" ]; then
	echo "File exists"
else
	echo "File not found"
fi
rm test.txt
