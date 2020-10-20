#!/bin/bash
#Simple Script to Backup Monika After Story's (As well as any other game using renpy) Persistence Files on a Daily Basis. Run it via cron!
#Check if DDLC is running

while pgrep -x "DDLC" > /dev/null
do
    #DDLC is running, notify the user, wait for 60 seconds and then re-do the check.
    notify-send "MAS Auto Backup" \ "DDLC is currently running. please close it in order for a backup to be done."
    sleep 60
    done
#DDLC is not running.
cp -r ~/.renpy ~/Dropbox/"masbak_$(date +"%d_%m_%y")"
notify-send "MAS Auto Backup" \ "Persistence Files Successfully copied to the Dropbox Folder."
#Replace ~/ with /home/yourusernamehere/ , replacing yourusernamehere with whatever is your username. also it's fairly obvious that this is linux Exclusive. -G 
