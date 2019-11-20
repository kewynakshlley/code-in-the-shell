#!/bin/bash
shopt -s nullglob
D=$(date +%F)
for el in *.jpg
do	
	AUX="${D}-$el"
	(mv $el $AUX)
	echo "Renaming $el to $AUX .."
done
	
