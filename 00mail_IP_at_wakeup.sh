#!/bin/bash
case $1/$2 in
  pre/*)
        next_day=$(date +%Y%m%d -d "$DATE + 1 day")
        hour=80000
        wake_time=$next_day"0"$hour
        sudo rtcwake -m no --date $wake_time
    ;;
  post/*)
    source /path to/check_IP.sh
    ;;
esac
