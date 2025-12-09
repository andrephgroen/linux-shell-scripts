#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Scannen folder: ~/.var/app"
sudo clamscan -o -r --bell -l /var/log/clamscan/clamscan-clamscan-apps.log -d /data/ws/clamupdate --detect-pua=yes --alert-phishing-ssl=yes --statistics=bytecode ~/.var/app
echo "Klaar!"
