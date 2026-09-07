#!/bin/bash

file="data.csv"

if [ ! -f "$file" ]; then
	echo -e "name,age,city\nJames,25,London\nWilliam,30,Manchester\nOliver,28,Birmingham" > "$file"
fi

record_count=$(($(wc -l < "$file") - 1))
echo "Total records: $record_count"

label="Average age"
awk -F',' -v lbl="$label" 'NR>1 {sum+=$2; count++} END {printf "%s: %.1f\n", lbl, sum/count}' "$file"

