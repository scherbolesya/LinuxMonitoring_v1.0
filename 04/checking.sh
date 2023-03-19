#!/bin/bash

source colors.conf

NUMB='[^1-6]$'
param1=$column1_background
param2=$column1_font_color
param3=$column2_background
param4=$column2_font_color
left_bg=$param1
left_f=$param2 
right_bg=$param3
right_f=$param4
default_1=false
default_2=false
default_3=false
default_4=false

if [[ $left_bg =~ $NUMB ]] || [[ $left_bg == "" ]]; then left_bg=6;default_1=true;fi
if [[ $left_f =~ $NUMB ]] || [[ $left_f == "" ]]; then left_f=1;default_2=true;fi
if [[ $right_bg =~ $NUMB ]] || [[ $right_bg == "" ]]; then right_bg=6;default_3=true;fi
if [[ $right_f =~ $NUMB ]] || [[ $right_f == "" ]]; then right_f=1;default_4=true;fi

if [[ $left_bg == $left_f ]]; then left_bg=6;left_f=1;default_1=true;default_2=true;fi
if [[ $right_bg == $right_f ]]; then right_bg=6;right_f=1;default_3=true;default_4=true;fi

export left_bg
export left_f
export right_bg
export right_f
export param1
export param2
export param3
export param4
export default_1
export default_2
export default_3
export default_4

./colors.sh $left_bg $left_f $right_bg $right_f



