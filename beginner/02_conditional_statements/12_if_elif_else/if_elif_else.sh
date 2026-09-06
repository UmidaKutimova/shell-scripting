#!/bin/bash 

grade=85

if [ $grade -ge 90 ]; then
	echo "Excellent"
elif [ $grade -ge 70 ]; then 
	echo "Good"
else
	echo "Satisfactory"
fi
