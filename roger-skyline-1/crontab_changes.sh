#!/bin/sh

crontab -l > ~/crontab
DIFF=$(diff ~/crontab ~/crontab_backup)
crontab -l > ~/crontab_backup

if [ "$DIFF" != "" ]
then
	echo "Crontab has been changed" | mail -s "Changes to crontab" root
fi

