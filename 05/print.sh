#!/bin/bash

dir_name=($d_name)
dir_size=($d_size)
file_name=($f_name)
file_size=($f_size)
file_type=($f_type)
exec_name=($g_name)
exec_size=($g_size)
exec_hash=($g_hash)


echo "Total number of folders (including all nested ones) = "$((d_amount-1)) 
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for (( i=1; i<6; i++)); do
  echo "$((i)) - ${dir_name[i]}/, ${dir_size[i]}"
done
echo "Total number of files = "$f_amount
echo "Number of:"
echo "Configuration files (with the .conf extension) = "$conf
echo "Text files = "$text
echo "Executable files = "$exec
echo "Log files (with the extension .log) = "$log
echo "Archive files = "$archive
echo "Symbolic links = "$symbolic 
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for (( i=0; i<10; i++)); do
  echo "$((i+1)) - ${file_name[i]}, ${file_size[i]}, ${file_type[i]}"
done
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
for (( i=0; i<10; i++)); do
  echo "$((i+1)) - ${exec_name[i]}, ${exec_size[i]}, ${exec_hash[i]}"
done
