#!/bin/bash
clear
echo "Cleaning previous link files..."
sudo rm /usr/local/bin/pip-*.sh /usr/local/bin/sdkman-*.sh
export NUMSCRIPTS=$(ls ./pip*.sh ./sdkman*.sh | wc -l)
echo "Number of run-scripts: "${NUMSCRIPTS}
echo "Creating temporary list file..."
ls ./pip*.sh ./sdkman*.sh > ./script-list.txt
echo "Creating link files..."
for SCRIPT in $(cat ./script-list.txt) ;
do
	echo "Link aanmaken voor: "${SCRIPT}
	sudo ln -s $(pwd)/${SCRIPT} /usr/local/bin/${SCRIPT}
done;
echo "Deleting temporary list file..."
rm ./script-list.txt
echo "Ready!"
