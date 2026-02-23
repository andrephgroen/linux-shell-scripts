#!/bin/zsh
clear
cd ~/ws/git-uranus/
echo "Changing folder to: "$(pwd)
for %a in ($(ls)) ; 
	do git pull

