#!/bin/bash
clear
echo "Showing last commit details: "
git log -n1 -p --format=fuller

# Finish
echo "Ready"
