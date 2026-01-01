#!/bin/bash
clear
export LOCALBIN='/usr/local/bin/'
export NUMOFSCRIPTS=$(expr $(ls -ls ${LOCALBIN} | cut -f 10,11,12,13 -d" " | wc -l) - 1)
echo "Number of current available scripts: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${LOCALBIN} | cut -f 10,11,12,13 -d" " | grep -i 'linux-shell-scripts' | sort
echo "Ready!"
