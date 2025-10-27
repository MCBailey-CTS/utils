#!/bin/bash


# if [ "$1" == "" ]; then
#   echo "Usage: rmpref.sh PREFIX"
#   exit 1
# fi




# if [[ -v $1 ]]; then
#     file=$1
# else
#     echo "Variable does not exist!"
#     exit 1
# fi

# file=$1
# prefix_=$2


# string=$prefix
# new_string="${file#prefix_}"
# echo "$new_string"


prefix=$1
string=$2




# echo "$result" # Output: "o-world"


if [ -f "$string" ]; then
    echo "The string represents a file."
else
    echo "The string does not represent a file.cd 
    exit 1
fi

result=${string#"$prefix"}

echo "Renaming $string to $result"


# prefix





# prefix= "sudoku_p_"
# search="$sudoku_p_*"

# edited=0

# for f in $search; do
# 	result=${f/sudoku_p_/}

# 	result=${result/.sudoku/.sud}

# 	if [ "$result" == "$f" ]; then
# 		# echo "No prefix found in $f"
# 		continue
# 	fi
# 	mv "$f" "$result"
# 	edited=$((edited + 1))


# 	# echo "$f -> $result"
# done

# echo "Edited $edited files"

