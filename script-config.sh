#!/bin/bash
clear
echo "Cleaning previous link files..."
sudo rm /usr/local/bin/pip-* /usr/local/bin/sdkman-* /usr/local/bin/my-* /usr/local/bin/scan-*
export NUMSCRIPTS=$(ls ./pip-*.sh ./sdkman-*.sh ./my-*.sh ./scan-*.sh | wc -l)
echo "Number of run-scripts: "${NUMSCRIPTS}
echo "Creating temporary list file..."
ls pip-* sdkman-* my-* scan-* > ./script-list.txt
cat ./script-list.txt | cut -f 1 -d"." > ./script-list2.txt
echo "Creating link files..."
for SCRIPT in $(cat ./script-list2.txt) ;
do
	echo "Creating link for: "${SCRIPT}
	sudo ln -s $(pwd)/${SCRIPT}.sh /usr/local/bin/${SCRIPT}
done;
echo "Deleting temporary list file..."
rm ./script-list.txt
rm ./script-list2.txt
echo "Ready!"
