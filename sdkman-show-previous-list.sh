#!/bin/bash
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
echo "'sdkman-show-previous-list' requires a reversed date input (e.g. yyyymmdd)"
echo "Showing previous 12 creation dates:"
ls ${HOME}/Documents/jdk-versies | sed -e 's/ /\n/g' | cut -f 4 -d "_" | cut -f 1 -d "." | tail -n 12
if [[ $1 -eq "null" ]];
then
	set $1 $(date +"%Y%m%d")
	echo "No date given. Using current date: "$1
	echo "Please follow the instructions above..."
fi
if [ -f "${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt" ];
then
	echo "Showing date: "$1
	echo "Showing contents of ${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt"
	cat ${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt
else
	echo "Chosen date [ "$1" ] is not available! Creating date:"
	sdkc
fi
echo "Ready!"
