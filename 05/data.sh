#!/bin/bash

d_amount="$(sudo find "$path" -type d | wc -l)"
d_name="$(sudo du -h $path | sort -hr | head -6 | awk '{print$2}')"
d_size="$(sudo du -h $path | sort -hr | head -6 | awk '{print$1}')"
f_amount="$(sudo find "$path" -type f | wc -l)"

conf="$(sudo find $path | grep -c ".conf$")"
text="$(sudo find $path -type f -exec file . -b {} \; | grep -c text)"
exec="$(sudo find $path -type f -perm /a=x | wc -l)"
log="$(sudo find $path | grep -c ".log$")"
archive="$(sudo find $path -type f -exec file . -b {} \; | grep -c -e compress -e archive)"
symbolic="$(sudo find "$path" -type l | wc -l)"

f_name="$(sudo find $path -type f -exec du -h {} \; | sort -hr | head -10 | awk '{print$2}')"
f_size="$(sudo find $path -type f -exec du -h {} \; | sort -hr | head -10 | awk '{print$1}')"
f_type="$(sudo find $path -type f -exec du -h {} \; | sort -hr | head -10 | awk -F. '{print $NF}')"

g_name="$(sudo find $path -type f -perm /a=x -exec du -h {} + | sort -hr | head -10 | awk '{print$2}')"
g_size="$(sudo find $path -type f -perm /a=x -exec du -h {} + | sort -hr | head -10 | awk '{print$1}')"
g_hash="$(sudo find $path -type f -perm /a=x -exec md5sum {} + | sort -hr | head -10 | awk '{print$1}')"

export d_amount
export d_name
export d_size
export f_amount

export conf
export text
export exec
export log
export archive
export symbolic

export f_name
export f_size
export f_type
export g_name
export g_size
export g_hash 

./print.sh 
