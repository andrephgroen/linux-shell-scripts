#!/bin/bash
clear
python3 -m venv ~/ws/venv/
source ~/ws/venv/bin/activate
echo "Virtual Environment [venv] set"
pip -V
export PIPLIST=$(expr $(pip list | cut -f 1 -d" " | wc -l) - 2)
echo "Number of software packages: "${PIPLIST}
echo "Create temporary file ~/ws/pip-list.txt"
pip list | cut -f 1 -d" " | tail -n ${PIPLIST} > ~/pip-list.txt
pip install --upgrade -r ~/ws/pip-list.txt
echo "Removing temporary file ~/ws/pip-list.txt"
rm ~/ws/pip-list.txt 
echo "Ready!"
