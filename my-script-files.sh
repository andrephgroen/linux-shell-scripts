#!/bin/bash
clear
export LOCALBIN='/usr/local/bin'
export NUMOFSCRIPTS=$(expr $(ls -ls ${LOCALBIN}/my-* ${LOCALBIN}/pip-* ${LOCALBIN}/sdkman-* ${LOCALBIN}/scan-* | cut -f 10,11,12,13 -d" " | wc -l))
echo "Number of current available scripts: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${LOCALBIN}/my-* ${LOCALBIN}/pip-* ${LOCALBIN}/sdkman-* ${LOCALBIN}/scan-*| cut -f 10,11,12,13 -d" " | sort
echo "Ready!"
