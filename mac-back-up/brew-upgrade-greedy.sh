#!/bin/zsh
clear
echo "Starting 'brew upgrade --greedy'..."
/usr/local/bin/brew upgrade --greedy --fetch-HEAD --verbose
echo "Ready!"
