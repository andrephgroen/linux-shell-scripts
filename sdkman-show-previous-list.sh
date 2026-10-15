#!/bin/bash
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/current/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/current/bin/sdkman-init.sh"
echo "'sdkman-show-previous-list' requires a reversed date input (e.g. yyyymmdd)"
echo "Previous creation dates:"
ls ${HOME}/Documents/jdk-versies | sed -e 's/ /\n/g' | cut -f 4 -d "_" | cut -f 1 -d "." | tail -n 12
if [[ $1 -eq "null" ]];
then
	echo "No date given. Please follow instructions above..."
else
	if [ -f "${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt" ];
	then
		echo "Showing date: "$1
		echo "Showing contents of ${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt"
		cat ${HOME}/Documents/jdk-versies/installed_java_versions_$1.txt
	else
		echo "Chosen date [ "$1" ] is not available!"
	fi
fi
echo "Ready!"
