#!/bin/bash

# Define the start and end times in minutes after midnight
# it has to be in range because script is called after every wake from sleep

start_minutes=510
end_minutes=800

# Get the current time in HH:MM format

        next_day=$(date +%Y%m%d -d "$DATE + 1 day")
        hour=40000
        wake_time=$next_day"0"$hour


# Convert time strings to minutes since midnight for comparison

current_minutes=$(date +"%H:%M" | awk -F: '{ print ($1 * 60) + $2}')
echo "current minutes: $current_minutes"
echo "next_day: $next_day"
echo "wake: $wake_time"
if [ "$current_minutes" -ge "$start_minutes" -a "$current_minutes" -lt "$end_minutes" ]; then
    
    echo "Subject: IP_adress" > mail.txt
    curl ifconfig.me >> mail.txt
    cat mail.txt | msmtp XXXXX@domain.com
    sudo rtcwake -m no --date $wake_time
    #echo "wakeup time is: $wake_time"
fi