#!/bin/bash

writefile=$1
writestr=$2

if [ $# -eq 2 ]
then
    mkdir -p "$(dirname "$writefile")" || exit 1
    echo "$writestr" > "$writefile" || exit 1
else
    echo "Required parameters not specified."
    exit 1
fi