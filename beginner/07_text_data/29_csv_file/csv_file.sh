#!/bin/bash

echo -e "name,age,city\nIsabella,24,USA\nAlex,30, Canada" > data.csv

echo "Name column only:"
cut -d',' -f1 data.csv

echo "Age column only:"
awk -F',' '{print $2}' data.csv
