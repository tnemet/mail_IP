#!/bin/bash
case $1/$2 in
  pre/*)
        next_day=$(date +%Y%m%d -d "$DATE + 1 day")
        hour=50000
        wake_time=$next_day"0"$hour
        sudo rtcwake -m mem --date $wake_time
    ;;
  post/*)
    source /path_to/mail_IP.sh
    ;;
esac

