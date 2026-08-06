#!/bin/bash
clear
python3 -m venv ~/ws/venv/
source ~/ws/venv/bin/activate
echo "Virtual Environment [venv] set"
pip -V
pip install --upgrade pip
echo "Ready!"
