#!/bin/bash
clear
echo "Setting SDKMAN! environment..."
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
cat ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt | less
echo "Ready!"
