# This Script is no longer maintained, use at your own risk.

# MASAutoBackup
(Semi) Auto-Backup Script for Monika After Story. (Linux Only)

## Usage
Download this repository as a zip, extract it anywhere you can remember and then run ``crontab -e``, and follow this guide:

m h * * * /path/to/sh

replace "path/to/sh" with the location of MASAutoBackup.sh, m for the minutes and h for the hour you want it to run (for example 30 17 would run it at 5:30 PM).

then edit the .sh itself on the following line:

``cp -r ~/.renpy ~/Dropbox/"masbak_$(date +"%d_%m_%y")"``

replace ~/ with /home/user, replacing user for your username.

Finally, give the script permissions to execute. if on a terminal, the command is ``chmod +x MASAutoBackup.sh``
