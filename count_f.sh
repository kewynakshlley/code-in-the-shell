#!/bin/bash

function count_files(){
	local N=$(ls | wc -l)
	echo "The number of file is $N" 
}
count_files
