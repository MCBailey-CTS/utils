#!/bin/bash
set -u
for file in "$@"; do
	echo -e "\033[32m$file\033[0m"
	cat "$file"
done