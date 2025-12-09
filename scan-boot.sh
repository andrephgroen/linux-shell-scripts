#!/bin/bash
clear
echo "Scan versie: "$(clamscan -V) 
echo "Scannen folder: /boot"
sudo clamscan -o -r --bell -l /var/log/clamscan/clamscan-clamscan-boot.log -d /data/ws/clamupdate --detect-pua=yes --alert-phishing-ssl=yes --statistics=bytecode /boot
echo "Klaar!"
