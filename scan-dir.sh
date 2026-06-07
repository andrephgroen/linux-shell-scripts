#!/bin/bash
clear
export SCANFOLDER=$(pwd)
export SCANTAG=$(echo $(date));
echo "Scan versie: "$(clamscan -V) 
echo "Scannen folder: "${SCANFOLDER}
sudo clamscan -o -r --bell -l /var/log/clamscan/clamscan-"${SCANTAG}".log --detect-pua=yes --alert-phishing-ssl=yes --statistics=bytecode /${SCANFOLDER}
echo "Klaar!"
