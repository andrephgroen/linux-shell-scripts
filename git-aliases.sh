#!/bin/bash
clear
# If available, git aliases are being shown.
echo "Showing git aliases: "
git config --list | grep 'alias\.' | sed 's/alias\.\([^=]*\)=\(.*\)/\1\     => \2/' | sort

# Finish
echo "Ready"
