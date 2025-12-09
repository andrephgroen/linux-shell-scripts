#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Updaten scan-database:"
sudo freshclam --show-progress --log=/var/log/freshclam.log --datadir=/data/ws/clamupdate/ --user=clamav
echo "Klaar!"
