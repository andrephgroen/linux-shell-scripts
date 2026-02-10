#!/bin/bash
clear
export LOCALBIN='/usr/local/bin'
export NUMOFSCRIPTS=$(expr $(ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | wc -l))
echo "Number of current available scripts: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${LOCALBIN} | grep -i 'linux-shell-scripts' | cut -f 11,12,13 -w | sort
echo "Ready!"
