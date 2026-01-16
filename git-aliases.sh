#!/bin/bash
clear
echo "Creating list of Git aliases:"
git config --list | grep 'alias\.' | sed 's/alias\.\([^=]*\)-\(.*\)/\1\\2/' | sort
echo "Ready!"
