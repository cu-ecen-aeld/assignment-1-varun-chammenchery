#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -eq 2 ]
then
    if [ ! -d "$filesdir" ]
    then
        echo "filesdir does not represent a directory on the filesystem."
        exit 1
    else
        num_files=$(find "$filesdir" -type f 2>/dev/null | wc -l)
        num_occurance=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)
        echo "The number of files are $num_files and the number of matching lines are $num_occurance"
    fi
else
    echo "Required parameters not specified."
    exit 1
fi