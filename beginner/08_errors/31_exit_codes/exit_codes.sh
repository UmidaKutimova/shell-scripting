#!/bin/bash

mkdir -p new_folder
if [ $? -eq 0 ]; then
	echo "Folder created successfully"
else
	echo "An error occurred"
fi

