#!/usr/bin/env bash
# check if total http connections to server number is greater than 200, if so restart http-server
#
# variables to be changed:
RECIPIENT="sysadmin@example.com"
SENDER="System Monitor <sysmon@example.com>"
USER="MONITOR_USER"
PASS="MONITOR_PASSWORD"
SMTP_SRV="smtp://mail.example.com:587"
#
#
PARAMS="-S smtp-use-starttls -S  ssl-verify=ignore -S smtp-auth=login"
SUBJECT="HTTP Connection Limit Exceeded"

while true; do
	sleep 28
	NUM=`ss -ant |grep ":80" |grep -v LISTEN |wc -l`
	if [ $NUM -gt 200 ]; then
		echo "Http Connection Number is exceeded: $NUM\nHttp service is restarting" > last_mail_content.txt
		echo "Sending email..."
		mail -s "$SUBJECT" -r "$SENDER" $PARAMS -S smtp="$SMTP_SRV" -S smtp-auth-user="$USER" -S smtp-auth-password="$PASS" "$RECIPIENT" < last_mail_content.txt
		systemctl restart httpd
	fi
done
