#!/bin/bash
###################
# Script: Create crontab
# Version: 1.0  - Initial
# Author: Sunil Kamba Vasu
###################

echo -n "Enter the user you want to schedule cronjob: "
read user
echo -n "Enter crontab command : "
read command
echo -n "Enter schedule month: "
read month
echo -n "Enter schedule day of month: "
read day_month
echo -n "Enter schedule day of week: "
read day_week
echo -n "Enter schedule hour: "
read hour
echo -n "Enter schedule minute: "
read minute

echo "$minute $hour $day_month $month $day_week $command" > /var/spool/cron/$user

