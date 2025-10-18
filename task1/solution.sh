#!/bin/bash

directory="$1"
search="$2"
replace="$3"

find "$directory" -type f -name "*.txt" -exec sed -i "s/$search/$replace/g" {} \;