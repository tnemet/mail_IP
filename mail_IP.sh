#!/bin/bash

# Define the start and end times in minutes since midnight
# it has to be in range because script is called after every wake from sleep

start_minutes=300
end_minutes=303

# Get the current time in HH:MM format

        next_day=$(date +%Y%m%d -d "$DATE + 1 day")
        hour=50000
        wake_time=$next_day"0"$hour


# Convert time strings to minutes since midnight for comparison

current_minutes=$(date +"%H:%M" | awk -F: '{ print ($1 * 60) + $2}')

if [ "$current_minutes" -ge "$start_minutes" -a "$current_minutes" -lt "$end_minutes" ]; then
    
    echo "Subject: IP_adress" > mail.txt
    curl ifconfig.me >> mail.txt
    cat mail.txt | msmtp XXXXX@domain.com
    sudo rtcwake -m mem --date $wake_time

fi
