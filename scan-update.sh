#!/bin/bash
clear
export SCANTAG=$(echo $(date));
echo "Scan versie: "$(clamscan -V) 
echo "Updaten scan-database:"
sudo freshclam --show-progress --log=/var/log/clamupdate/freshclam-"${SCANTAG}".log --user=clamupdate
echo "Klaar!"
