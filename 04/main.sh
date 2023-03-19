#!/bin/bash

if [[ -n $1 ]]
then
    echo "Parameters are not needed, they are in the config file"
else
   chmod +x ./*.sh
   ./checking.sh
fi

