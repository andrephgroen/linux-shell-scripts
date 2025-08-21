#!/bin/zsh
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "'sdkp' requires a reversed date input (e.g. yyyymmdd)"
echo "Previous creation dates:"
ls ~/Documents/jdk-versies | sed -e 's/ /\n/g' | cut -f 4 -d "_" | cut -f 1 -d "."
echo "Showing date: "$1
cat ~/Documents/jdk-versies/installed_java_versions_$1.txt
echo "Ready!"
