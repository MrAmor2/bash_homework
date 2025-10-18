#!/bin/bash

directory=$1
archive_directory=$2

mkdir -p "$archive_directory"

find "$directory" -type f -name "*.log" -mtime +7 | while read -r log_file; do
    base_name=$(basename "$log_file")

    cp "$log_file" "./$base_name"
    gzip -f "./$base_name"
    
    mv "./$base_name.gz" "$archive_directory
done