#!/bin/bash

mkdir -p new_folder
echo "This is a  test file" > new_folder/file.txt
cat new_folder/file.txt
rm new_folder/file.txt
rmdir new_folder
