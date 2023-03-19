#!/bin/bash

if [[ -n $1 ]];
then
    echo "wrong arguments"
    exit 1
fi

chmod +x ./*.sh
./data_os.sh
./save.sh
