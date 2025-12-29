#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Updaten scan-database:"
sudo freshclam --show-progress --log=/var/log/clamupdate/freshclam.log --user=clamav
echo "Klaar!"
