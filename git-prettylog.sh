#!/bin/bash
clear
echo "Showing a tree like overview of all commits in the current git-folder: "
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative

# Finish
echo "Ready"
