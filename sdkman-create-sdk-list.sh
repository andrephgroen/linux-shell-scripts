#!/bin/zsh
clear
echo "Setting SDKMAN! environment.."
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
echo "Creating list of Installed Java SDK's:"
echo "-> Creating header"
sdk list java | head -n 5 > ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt
echo "-> Creating body"
sdk list java | grep -i installed >> ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt
echo "-> Creating footer"
sdk list java | tail -n 10 >> ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt
echo "Showing results:"
cat ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt
echo "Ready!"
