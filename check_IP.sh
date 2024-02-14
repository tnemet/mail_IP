#!/bin/bash

    current_IP=$( curl ifconfig.me | echo "$( awk -F. '{ print $1$2$3$4 }')" )
    last_IP=$( cat /path to/last_IP.txt )
    
    if [ "$current_IP" -ne "$last_IP" ]; then 
    
    echo "Subject: IP_adress" > /path to/mail.txt # could be done with sed 2d
    curl ifconfig.me >> /path to/mail.txt              
    cat /path to/mail.txt | msmtp user@domain.com
    
    last_IP=$( curl ifconfig.me | echo "$( awk -F. '{ print $1$2$3$4 }')" )
    echo "$last_IP" > /path to/last_IP.txt

    fi
