#!/bin/bash


echo "${left_bg}${left_f}HOSTNAME        ${RESET} = ${right_bg}${right_f}$HOSTNAME${RESET}"
echo "${left_bg}${left_f}TIMEZONE        ${RESET} = ${right_bg}${right_f}$TIMEZONE${RESET}"
echo "${left_bg}${left_f}USER            ${RESET} = ${right_bg}${right_f}$USER${RESET}"
echo "${left_bg}${left_f}OS              ${RESET} = ${right_bg}${right_f}$OS${RESET}"
echo "${left_bg}${left_f}DATE            ${RESET} = ${right_bg}${right_f}$DATE${RESET}"
echo "${left_bg}${left_f}UPTIME          ${RESET} = ${right_bg}${right_f}$UPTIME${RESET}"
echo "${left_bg}${left_f}UPTIME_SEC      ${RESET} = ${right_bg}${right_f}$UPTIME_SEC${RESET}"
echo "${left_bg}${left_f}IP              ${RESET} = ${right_bg}${right_f}$IP${RESET}"
echo "${left_bg}${left_f}MASK            ${RESET} = ${right_bg}${right_f}$MASK${RESET}"
echo "${left_bg}${left_f}GATEWAY         ${RESET} = ${right_bg}${right_f}$GATEWAY${RESET}"
echo "${left_bg}${left_f}RAM_TOTAL       ${RESET} = ${right_bg}${right_f}$RAM_TOTAL${RESET}"
echo "${left_bg}${left_f}RAM_USED        ${RESET} = ${right_bg}${right_f}$RAM_USED${RESET}"
echo "${left_bg}${left_f}RAM_FREE        ${RESET} = ${right_bg}${right_f}$RAM_FREE${RESET}"
echo "${left_bg}${left_f}SPACE_ROOT      ${RESET} = ${right_bg}${right_f}$SPACE_ROOT${RESET}"
echo "${left_bg}${left_f}SPACE_ROOT_USED ${RESET} = ${right_bg}${right_f}$SPACE_ROOT_USED${RESET}"
echo "${left_bg}${left_f}SPACE_ROOT_FREE ${RESET} = ${right_bg}${right_f}$SPACE_ROOT_FREE${RESET}"

./color_scheme.sh
