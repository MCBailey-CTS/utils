#!/bin/bash

if [[ $# -ne "1" ]]; then
    echo "Expecting ufunc name"
    exit 1
fi

dir_name=$1
directory="/G/CTS/junk/0Ufunc Testing/$dir_name"

if ! [ -d "$directory" ]; then
    mkdir "$directory"
fi

debugsigndotnet="/C/Users/mcbailey/repos/tsg-library/bin/DebugSignDotNet"
cmp -s "$debugsigndotnet/tsg_library.dll" "$directory/tsg_library.dll"
case $? in
    0)s
        echo "the files haven't changed"
    ;;
    1)
        cp "$debugsigndotnet/"*.dll "$directory"
    ;;
    2)
        cp "$debugsigndotnet/"*.dll "$directory"
    ;;
    *)
        echo "Unknown error code: $?"
        exit 1
    ;;
esac

echo "complete"