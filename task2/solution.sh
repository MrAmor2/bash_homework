#!/bin/bash

directory="$1"

file_count=$(find "$directory" -type f | wc -l)
echo "Files: $file_count"

directory_count=$(find "$directory" -type d | wc -l)
echo "Dirs: $directory_count"

biggest_file=$(find "$directory" -type f -printf "%s %p\n" | sort -nr | head -1)

biggest_file_size=$(echo "$biggest_file" | awk '{print $1}')
biggest_file_name=$(echo "$biggest_file" | awk '{print $2}')

echo "Largest file: $biggest_file_name, $biggest_file_size"