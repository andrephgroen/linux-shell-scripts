#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Scannen folder: /data/ws/"
sudo clamscan -o -r --bell -l /var/log/clamscan/clamscan-clamscan-data.log -d /data/ws/clamupdate --detect-pua=yes --alert-phishing-ssl=yes --statistics=bytecode /data
echo "Klaar!"
