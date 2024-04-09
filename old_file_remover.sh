#!/bin/bash

# Define the directory to search in and the days threshold
directory=$1
days_threshold=$2
number_del=0
history_path=${3:-"$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"}'/history.txt'





# Store the output of the find command in a variable
found_paths=$(find "$directory" -type f -mtime +$days_threshold)
# Iterate through the paths and remove each file
for path in $found_paths; do
    rm "$path"
    number_del=$((number_del+1))
    dat=$(date +%d-%b-%H_%M)
    echo "$number_del: $path $dat" >> $history_path
    echo "Deleted: $path"
done

echo "Total files deleted: $number_del"
