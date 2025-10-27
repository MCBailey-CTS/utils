#!/bin/bash

for f in `ls *.sudoku` ; do
	#echo "File -> $f"/
	width=$(head -n 1 $f)
	#echo $width

	echo $f
	
	./_fold.sh  $width $f

done

