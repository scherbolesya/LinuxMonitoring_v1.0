#!/bin/bash

read -p "Do you want to save as file (y/n)" answer
if [[ $answer == Y || $answer == y ]];
then
    ./data_os.sh > "$(date "+%d_%m_%y_%H_%M_%S").status"
fi
