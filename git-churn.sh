#!/bin/bash
clear
echo "Showing all file copies from current dir as #count , #filename: "
git log --all -M -C --name-only --format='format:' $@ | sort | grep -v '^$' | uniq -c | sort | awk 'BEGIN {print count,file} {print $1 , $2}'

# Finish
echo "Ready"
