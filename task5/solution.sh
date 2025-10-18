#!/bin/bash

directory="$1"

find "$directory" -type d -exec du -sh {} \; 2>/dev/null | sort -hr | head -n 6 | tail -n 5