#!/bin/bash

directory="$1"

find "$directory" -type f -exec chmod 640 {} \;
find "$directory" -type d -exec chmod 750 {} \;