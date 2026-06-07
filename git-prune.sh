#!/bin/bash
clear
echo "Pruning all reflog expirations: "
git reflog expire --expire=now --all && git gc --prune=now

# Finish
echo "Ready"
