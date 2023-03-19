#!/bin/bash

param=^[1-6]$

if [[ $# != 4 ]]
then
    echo "Enter four parametrs 1-6"
else
            if [[ $1 =~ $param ]] && [[ $2 =~ $param ]] && [[ $3 =~ $param ]] && [[ $4 =~ $param ]]
        then
            if [[ $1 != $2 ]] && [[ $3 != $4 ]]
                then
                    chmod +x ./*.sh
                    ./colors.sh "$@"
            else
                    if [[ $1 == $2 ]] || [[$3 == $4 ]]
                        then
                               echo "Font and background have same color, try again and write different color"
                    fi
            fi
        fi
fi
