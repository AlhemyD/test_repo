#!/bin/bash

# Define the directory to search in and the days threshold
directory=$1
days_threshold=$2

# Store the output of the find command in a variable
found_paths=$(find "$directory" -type f -mtime +$days_threshold)

# Iterate through the paths and remove each file
for path in $found_paths; do
    rm "$path"
    echo "Deleted: $path"
done
