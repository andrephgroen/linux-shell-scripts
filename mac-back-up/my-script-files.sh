#!/bin/bash
clear
export WORKFOLDER=/usr/local/bin/
export MYSCRIPTS=$(expr $(ls -l ${WORKFOLDER} | grep -i -e '/Users/Groea10/scripts/' | cut -f 9,10,11 -w | cut -f 1,5 -d / | wc -l))
echo "Number of personal scripts: "${MYSCRIPTS}
ls -l ${WORKFOLDER} | grep -i -e '/Users/Groea10/scripts/' | cut -f 9,10,11 -w | cut -f 1,5 -d /
echo "Ready!"
