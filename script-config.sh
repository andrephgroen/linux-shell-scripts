#!/bin/bash
clear
export NUMSCRIPTS=$(ls ./pip*.sh ./sdkman*.sh | wc -l)
echo "Aantal gevonden run-scripts: "${NUMSCRIPTS}
echo "Tijdelijk bestand aanmaken..."
ls ./pip*.sh ./sdkman*.sh > ./script-list.txt
echo "Aanmaken link bestanden..."

#for VAR in $(cat ./script-list.txt) ; do echo "Script: "${VAR} ; done

for SCRIPT in $(cat ./script-list.txt) ;
do
	echo "Link aanmaken voor: "${SCRIPT}
	sudo ln -s $(pwd)/${SCRIPT} /usr/local/bin/${SCRIPT}
done;
echo "Verwijderen tijdelijk bestand..."
rm ./script-list.txt
echo "Klaar!"
