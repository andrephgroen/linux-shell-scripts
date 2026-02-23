#!/bin/zsh
clear
echo "Creating file with name: ~/Documents/jdk-versies/installed_java_versions_"$(date +%Y%m%d)".txt"

echo "Creating header..."
exec $(sdk list java | head -n 5) > ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt

echo "Creating body..." 
exec $(sdk list java | grep -i installed) >> ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt

echo "Creating footer..."
exec $(sdk list java | tail -n 10) >> ~/Documents/jdk-versies/installed_java_versions_$(date +"%Y%m%d").txt
