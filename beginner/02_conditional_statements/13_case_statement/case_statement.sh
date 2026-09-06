#!/bin/bash

echo "Enter a day (Mon/Tue/other):"
read day
case $day in
	Mon) echo "It's Monday";;
	Tue) echo "It's Tuesday";;
	*) echo "Some other day";;
esac
