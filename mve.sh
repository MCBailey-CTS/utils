#!/bin/bash

# Check if prefix argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <prefix>"
  exit 1
fi

prefix="$1"

# Loop over files in current directory
for file in *; do
  # Check if file starts with the prefix
  if [[ "$file" == "$prefix"* ]]; then
    newname="${file#$prefix}"  # Remove prefix
    mv -i -- "$file" "$newname"
    echo "Renamed: $file -> $newname"
  fi
done


# #!/bin/bash

# path=*.minesweeper
# ext=$1
# echo $ext

# # printf $path


# for file in $ext; do
# 	# echo "${file%.$ext}"
# 	echo $file
# # 	# mv $file "${file%.$ext}".mine
# # 	# #echo "${file%.minesweeper}.mine"
# # 	# # echo "${file%.$ext}.*"
# done
