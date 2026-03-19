#!/bin/zsh
clear
python3 -m venv ~/ws/venv/
source ~/ws/venv/bin/activate
echo "Virtual Environment [venv] set"
pip -V
export PIPLIST=$(expr $(pip list | cut -f 1 -w | wc -l) - 2)
echo "Number of software packages: "${PIPLIST}
echo "Creating temporary file ~/pip-freeze.txt"
pip freeze --all > ~/pip-freeze.txt
echo "Results:"
cat ~/pip-freeze.txt
echo "Removing temporary file ~/pip-freeze.txt"
rm ~/pip-freeze.txt
echo "Ready!"
