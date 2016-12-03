#!/bin/bash

for list in *.txt
do
	mkdir "${list%.*}"
	for file in $(cat "$list")
	do
		mv "$file" ./"${list%.*}"
	done
done