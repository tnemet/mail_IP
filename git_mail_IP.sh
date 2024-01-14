#!/bin/bash

# Define the start and end times in minutes after midnight
# it has to be in range because script is called after every wake from sleep

# 5:00
start_minutes=300
# 5:03
end_minutes=303
# Convert time strings to minutes since midnight for comparison
current_minutes=$(date +"%H:%M" | awk -F: '{ print ($1 * 60) + $2}')

if [ "$current_minutes" -ge "$start_minutes" -a "$current_minutes" -lt "$end_minutes" ]; then
    current_IP=$( curl ifconfig.me | echo "$( awk -F. '{ print $1$2$3$4 }')" )
    last_IP=$( cat /path to/last_IP.txt )
    
    if [ "$current_IP" -ne "$last_IP" ]; then 
    echo "Subject: IP_adress" > /path to/mail.txt
    curl ifconfig.me >> /path to/mail.txt              
    cat /path to/mail.txt | msmtp xxxx@domain.com
    fi

    # Get the current time in HH:MM format and add one day
        next_day=$(date +%Y%m%d -d "$DATE + 1 day")
        hour=50000
        wake_time=$next_day"0"$hour

    last_IP=$( curl ifconfig.me | echo "$( awk -F. '{ print $1$2$3$4 }')" )
    echo "$last_IP" > /path to/last_IP.txt

    sudo rtcwake -m mem --date $wake_time
fi

