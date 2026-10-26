#!/bin/bash
clear
export LOCALBIN='/usr/local/bin'
export NUMOFSCRIPTS=$(expr $(ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | wc -l))
echo "Number of current available scripts: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | cut -f 1-50 -d " " | cut -f 7-9 -d "/" | cut -f 1 -d "." | sort
echo "Ready!"
