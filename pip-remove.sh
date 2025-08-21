#!/bin/zsh
clear
python3 -m venv ~/ws/venv/
source ~/ws/venv/bin/activate
echo "Virtual Environment [venv] set"
pip -V
export PIPLIST=$(expr $(pip list | cut -f 1 -w | wc -l) - 2)
echo "Number of software packages: "${PIPLIST}
echo "Removing: "$1
pip uninstall $1
echo "Ready!"
