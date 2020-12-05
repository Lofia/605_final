#!/bin/bash

n=1
m=1
mkdir $n
for file in Data/csvfiles/*.csv
do
	mv $file $n/
	let m++
	if [[ m -eq 101 ]]; then
		m=1
		let n++
		mkdir $n
	fi
done
		
