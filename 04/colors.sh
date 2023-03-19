#!/bin/bash

#background
White=$'\033[47m'
Red=$'\033[41m'
Green=$'\033[42m'
Blue=$'\033[44m'
Purple=$'\033[45m'
Black=$'\033[40m'

#font
White_f=$'\033[37m'
Red_f=$'\033[31m'
Green_f=$'\033[32m'
Blue_f=$'\033[34m'
Purple_f=$'\033[35m'
Black_f=$'\033[30m'

RESET=$'\033[0m'


case $1 in
        1)left_bg=$White ;;
        2)left_bg=$Red ;;
        3)left_bg=$Green ;;
        4)left_bg=$Blue ;;
        5)left_bg=$Purple ;;
        6)left_bg=$Black ;; 
esac

case $2 in

        1)left_f=$White_f ;;
        2)left_f=$Red_f ;;
        3)left_f=$Green_f ;;
        4)left_f=$Blue_f ;;
        5)left_f=$Purple_f ;;
        6)left_f=$Black_f ;;
esac

case $3 in

        1)right_bg=$White ;;
        2)right_bg=$Red ;;
        3)right_bg=$Green ;;
        4)right_bg=$Blue ;;
        5)right_bg=$Purple ;;
        6)right_bg=$Black ;;
esac

case $4 in

        1)right_f=$White_f ;;
        2)right_f=$Red_f ;;
        3)right_f=$Green_f ;;
        4)right_f=$Blue_f ;;
        5)right_f=$Purple_f ;;
        6)right_f=$Black_f ;;
esac

export left_bg
export left_f
export right_bg
export right_f
export RESET

./text.sh

