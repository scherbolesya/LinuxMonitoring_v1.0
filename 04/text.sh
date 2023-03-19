#!/bin/bash

case $param1 in
          1) NAM1="white" ;;
          2) NAM1="red" ;;
          3) NAM1="green" ;;
          4) NAM1="blue" ;;
          5) NAM1="purple" ;;
          6) NAM1="black" ;;
esac

case $param2 in
          1) NAM2="white" ;;
          2) NAM2="red" ;;
          3) NAM2="green" ;;
          4) NAM2="blue" ;;
          5) NAM2="purple" ;;
          6) NAM2="black" ;;
esac

case $param3 in
          1) NAM3="white" ;;
          2) NAM3="red" ;;
          3) NAM3="green" ;;
          4) NAM3="blue" ;;
          5) NAM3="purple" ;;
          6) NAM3="black" ;;
esac

case $param4 in
          1) NAM4="white" ;;
          2) NAM4="red" ;;
          3) NAM4="green" ;;
          4) NAM4="blue" ;;
          5) NAM4="purple" ;;
          6) NAM4="black" ;;
esac

if [[ $default_1 == true ]]; then param1="default"; NAM1="black";fi
if [[ $default_2 == true ]]; then param2="default"; NAM2="white";fi
if [[ $default_3 == true ]]; then param3="default"; NAM3="black";fi
if [[ $default_4 == true ]]; then param4="default"; NAM4="white";fi

export NAM1
export NAM2
export NAM3
export NAM4
export param1
export param2
export param3
export param4

./data_os.sh

