#!/bin/bash
clear
echo "Showing a nice git log overview: "
git log --stat --pretty=format:"Informatie   : %h - %ar | %ce - %an %nOmschrijving : %s%nBestanden    :"

# Finish
echo "Ready"
