#!/bin/bash

for f in `ls *p_xy*.sudoku` ; do
	#echo "File -> $f"/
	#length=$(head -n 1 $f)
	#echo $width
	
	#./_fold.sh  $width $f
	

	index=$(expr index "$f" ".")
	num=${f:index-4:3}
	newf="lg-$num.rf"
	
	git mv $f ../$newf


done

