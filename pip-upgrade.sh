#!/bin/bash
clear
python3 -m venv ~/ws/venv/
source ~/ws/venv/bin/activate
echo "Virtual Environment [venv] set"
pip -V
export PIPLIST=$(expr $(pip list | cut -f 1 -d" " | wc -l) - 2)
echo "Number of software packages: "${PIPLIST}
pip list | cut -f 1 -d" " | tail -n ${PIPLIST} > ~/pip-list.txt
pip install --upgrade -r ~/pip-list.txt
echo "Ready!"
