#!/bin/bash


# this will get you 
# -d directory
# -f filename
# -e extension with dot
# -l fileleaf
# -h has extension

before="/c/users/mcbailey/repos/logics/keys.txt"

# cat=$(ls $before)

# echo $cat

# echo $before

# after=${before//i/kkkkkk}

# echo $after

# filename="example.tar.gz"

# Extract the extension
# extension="${filename##*.}"

# echo "File extension: $extension"


# get the file name
echo $(basename "$before")


# get the directory path
echo $(basename $(dirname "$before"))


# extension of file
echo $()

# gets the name of the directory 


# echo $(dirname "$before")

