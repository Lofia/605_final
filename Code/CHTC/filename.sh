#!/bin/bash

files=$(ls Data/csvfiles)
for name in $files
do
	echo $name >> filename.txt
done
