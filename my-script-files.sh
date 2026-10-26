#!/bin/bash
clear
export SCRIPTFOLDER=${HOME}/linux-shell-scripts
echo "Scriptfolder				: "${SCRIPTFOLDER}
export NUMOFSCRIPTS=$(expr $(ls -ls ${SCRIPTFOLDER}/*.sh | wc -l))
echo "Number of current available scripts	: "${NUMOFSCRIPTS}
echo "Script files:"
ls -ls ${SCRIPTFOLDER}/*.sh | cut -f 5 -d"/" | cut -f 1 -d"." > ${SCRIPTFOLDER}/my-scripts.txt
for SCRIPTS in $(cat ${SCRIPTFOLDER}/my-scripts.txt) ;
do
	echo "Script: "${SCRIPTS}
done;
echo "Cleaning up temporary file(s)"
rm ${SCRIPTFOLDER}/my-scripts.txt
echo "Ready!"
