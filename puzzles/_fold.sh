#!/bin/bash

width=$1
path=$2

echo "$(fold -w $width $path)" > $path

cat $path


