#!/bin/bash


set -u

width=$1

shift


for file in "$@"
do
	#echo "Prcessing: $arg"
#done

#echo "$@"

#exit 0

#file=$2

#echo "$#"






#exit 0

fold -w $width "${file}" > temp

mv temp "${file}"
cat "${file}"

done
