#!/bin/bash

start=$(date +%s)

if [[ $# -ne 1 ]] || [[ "${1: -1}" != "/" ]]; then
    echo "Please, enter the path to folder"
    exit 1
fi

exectime=$1
path="${exectime%?}"
export path
chmod +x data.sh
chmod +x print.sh 
./data.sh
summary_time=$(($(date +%s)-start))
echo "Execution time (in second) = "$summary_time

../04