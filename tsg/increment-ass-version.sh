#!/bin/bash

set -u

if ! [ -n $1 ]; then
    echo "Expecting name of dll or '.' to signify all dlls in ufunc directory"
    exit 1
fi

udrive=/u/nxcustom/nx2306library/ufunc

if [[ $1 == "." ]]; then
    for dll in "${udrive}/"*.dll; do
        # t=$(basename "$dll")
        proper=${dll//$'/'/$'\\'}     
        proper=${proper/$'\\u'/"u:"}   
        .ToString()"
        versionell.exe -Command $command)
    done
fi


# if [ -]


# path="u:\\nxcustom\\nx2306library\\ufunc"

# # command=

# powershell.exe -Command "[System.Reflection.AssemblyName]::GetAssemblyName(\"\\block-attributer.dll\").Version"