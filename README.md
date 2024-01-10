
This script will send e-mail with current public IP address if resume from sleep is in range 5:00-5:03, set alarm for wakeup next day at 5:00 and sleep again.
If there is manual wakeup pre) case will setup wakeup alarm for next day because alarm is cleared after every wakeup.

Configure msmtp to your needs, place 00mail_IP_at_wakeup.sh in /usr/lib/systemd/system-sleep/ and you good to go.


