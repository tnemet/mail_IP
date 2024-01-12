
This script will send e-mail with current public IP address if resume from sleep is in range 5:00-5:03, set alarm for wakeup next day at 5:00 and sleep again.
If there is manual wakeup pre) case will setup wakeup alarm for next day because alarm is cleared after every wakeup.

Add rtcwake to nopass sudoers, configure msmtp to your needs (place config in /etc/msmtp file so root can access it), place 00mail_IP_at_wakeup.sh in /usr/lib/systemd/system-sleep/ and you good to go.

# -added - Will add IP checking so it doesn't send same adress multiple times.

