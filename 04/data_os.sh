#!/bin/bash

HOSTNAME="$HOSTNAME"
TIMEZONE="$(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')"
USER="$(whoami)"
OS="$(uname)"
DATE="$(date | awk '{print $2, $3, $4, $5}')"
UPTIME="$(uptime -p)"
UPTIME_SEC="$(awk '{print $1}' /proc/uptime)"
IP="$(hostname -I)"
MASK="$(route -n |sed -n '4'p | awk '{print $3}')"
GATEWAY="$(ip r | grep default | awk '{print $3}')"
RAM_TOTAL="$(free -m | grep Mem | awk '{printf "%.3f GB", $2/1024}')"
RAM_USED="$(free -m | grep Mem | awk '{printf "%.3f GB", $3/1024}')"
RAM_FREE="$(free -m | grep Mem | awk '{printf "%.3f GB", $4/1024}')"
SPACE_ROOT="$(df /root/ | grep "/" | awk '{printf "%.2f MB", $2/1024}')"
SPACE_ROOT_USED="$(df /root/ | grep "/" | awk '{printf "%.2f MB", $3/1024}')"
SPACE_ROOT_FREE="$(df /root/ | grep "/" | awk '{printf "%.2f MB", $4/1024}')"

export HOSTNAME
export TIMEZONE
export USER
export OS
export DATE
export UPTIME
export UPTIME_SEC
export IP
export MASK
export GATEWAY
export RAM_TOTAL
export RAM_USED
export RAM_FREE
export SPACE_ROOT
export SPACE_ROOT_USED
export SPACE_ROOT_FREE

./print.sh
