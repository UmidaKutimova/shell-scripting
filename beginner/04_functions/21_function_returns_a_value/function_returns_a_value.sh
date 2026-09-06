#!/bin/bash

add() {
	echo $(($1 + $2))
}
result=$(add 5 7)
echo "Sum: $result"
