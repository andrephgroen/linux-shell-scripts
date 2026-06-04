#!/bin/bash
clear

# Cleaning up previous link files if they exist
export LOCALBIN="/usr/local/bin/"
if [ -f ${LOCALBIN}/pip-* ] && [ -f ${LOCALBIN}/sdkman-* ] && [ -f ${LOCALBIN}/my-* ] && [ ${LOCALBIN}/scan-* ]; then
	echo "Cleaning previous link files..."
	sudo rm ${LOCALBIN}/pip-* ${LOCALBIN}/sdkman-* ${LOCALBIN}/my-* ${LOCALBIN}/scan-*
fi

# Summarizing all available scripts from the installation folder"
export NUMSCRIPTS=$(ls ./pip-*.sh ./sdkman-*.sh ./my-*.sh ./scan-*.sh | wc -l)
echo "Number of run-scripts: "${NUMSCRIPTS}

# Creating temporary list file
echo "Creating temporary list file..."
ls pip-* sdkman-* my-* scan-* > ./script-list.txt

# Enhancing temporary list file
cat ./script-list.txt | cut -f 1 -d"." > ./script-list2.txt

# Creating the actual link files in folder: ${LOCALBIN}
echo "Creating link files in folder: "${LOCALBIN}
for SCRIPT in $(cat ./script-list2.txt) ;
do
	echo "Creating link for: "${SCRIPT}
	sudo ln -s $(pwd)/${SCRIPT}.sh /usr/local/bin/${SCRIPT}
done;

# Removing redundent temporary list file
echo "Deleting temporary list file..."
rm ./script-list*.txt

# Finish
echo "Ready!"
