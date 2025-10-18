#!/bin/bash

logfile="$1"


info_count=$(grep "INFO" "$logfile"  | wc -l)
error_count=$(grep "ERROR" "$logfile" | wc -l)
warn_count=$(grep "WARN" "$logfile"  | wc -l)

echo "INFO :  $info_count"
echo "ERROR:  $error_count"
echo "WARN :  $warn_count"