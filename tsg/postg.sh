#!/bin/bash
set -u

debugsigndotnet="/C/Users/mcbailey/repos/tsg-library/bin/DebugSignDotNet"


if [[ $# -ne "1" ]]; then
    echo "Expecting directory name"
    exit 1
fi

dir_name=$1
directory="/G/CTS/junk/0Ufunc Testing/$dir_name"

# ckeck if directory exists, if not create it
if ! [ -d "$directory" ]; then
    mkdir "$directory"
    echo "Created directory: $directory"
fi

temp="${debugsigndotnet}/tsg_library.dll"

# exit 0

if ! [ -f "${temp}" ]; then
    # mkdir "$directory"
    echo "Source file does not exist: $debugsigndotnet/tsg_library.dll"
    exit 1

    


    # 0 if ! [ -f "$d/00/

fi




echo "we got here"


# exit 1

# cmp -s "$debugsigndotnet/tsg_library.dll" "$directory/tsg_library.dll"
# case $? in
#     0)
#         echo "the files haven't changed"
#     ;;
#     1)
#         cp "$debugsigndotnet/"*.dll "$directory"
#     ;;
#     2)
#         cp "$debugsigndotnet/"*.dll "$directory"
#     ;;
#     *)
#         echo "Unknown error code: $?"
#         exit 1
#     ;;
# esac

# echo "complete"