#!/bin/bash

if [ $# == 0 ]
    then
        echo "no parametr"
    else
        if [ $# -gt 1 ]
        then
            echo "you have to write only one parametr"
        else
            if [[ $1 =~ ^[-+]?[0-9]*[.]?[0-9]+$ ]]
        then
            echo "you have to write no digit"
            else
            echo "$1"
            fi
        fi
fi

