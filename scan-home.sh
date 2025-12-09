#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Scannen folder: "${HOME}
sudo clamscan -o -r --bell --exclude-dir ~/.* --exclude ~/.* -l /var/log/clamscan/clamscan-clamscan-home.log -d /data/ws/clamupdate --detect-pua=yes --alert-phishing-ssl=yes --statistics=bytecode /home
echo "Klaar!"
