#!/bin/bash
clear
export LOCALBIN='/usr/local/bin'
export NUMOFSCRIPTS=$(expr $(ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | wc -l))
echo "Number of current available scripts: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | cut -f 27-40 -d " " | cut -f 5,6,7,8,9 -d "/" | cut -f 1 -d "." | sort
echo "Ready!"
